import 'dart:io';

import 'package:flutter_application_1/common/data/model/account.dart';
import 'package:flutter_application_1/common/data/model/category.dart';
import 'package:flutter_application_1/common/data/model/cell.dart';
import 'package:flutter_application_1/common/data/model/employee.dart';
import 'package:flutter_application_1/common/data/model/order.dart';
import 'package:flutter_application_1/common/data/model/product.dart';
import 'package:flutter_application_1/common/data/model/productInCellEntity.dart';
import 'package:flutter_application_1/common/data/model/provider.dart';
import 'package:flutter_application_1/common/data/model/role.dart';
import 'package:flutter_application_1/domain/entity/roleEntity.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import '../../common/data_base_request.dart';

class DataBaseHelper {
  static final DataBaseHelper instance = DataBaseHelper._instance();

  DataBaseHelper._instance();

  late final Directory _appDocumentDirectory;
  late final String _pathDB;
  late final Database dataBase;
  int _version = 1;

  Future<void> init() async {
    _appDocumentDirectory =
        await path_provider.getApplicationDocumentsDirectory();

    _pathDB = join(_appDocumentDirectory.path, 'storage.db');

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      sqfliteFfiInit();
      dataBase = await databaseFactoryFfi.openDatabase(
        _pathDB,
        options: OpenDatabaseOptions(
          version: _version,
          onCreate: (db, version) async {
            await onCreateTable(db);
          },
          onUpgrade: (db, oldVersion, newVersion) async {
            await onUpdateTable(db);
          },
        ),
      );
    } else {
      dataBase = await openDatabase(_pathDB, version: _version,
          onCreate: (dataBase, version) async {
        await onCreateTable(dataBase);
      }, onUpgrade: (dataBase, oldVersion, newVersion) async {
        await onUpdateTable(dataBase);
      });
    }
  }

  Future<void> onCreateTable(Database db) async {
    for (var i = 0; i < DataBaseRequest.tableList.length; i++) {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
    await onInitTable(db);
  }

  Future<void> onDropDataBase() async {
    dataBase.close();
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      databaseFactoryFfi.deleteDatabase(_pathDB);
    } else {
      deleteDatabase(_pathDB);
    }
  }

  Future<void> onUpdateTable(Database db) async {
    var tables = await db.rawQuery('Select name From sqlite_master;');

    for (var table in DataBaseRequest.tableList.reversed) {
      if (tables.where((element) => element['name'] == table).isNotEmpty) {
        await db.execute(DataBaseRequest.deleteTable(table));
      }
    }
    for (var i = 0; i < DataBaseRequest.tableList.length; i++) {
      await db.execute(DataBaseRequest.createTableList[i]);
    }
    await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async {
    try {
      db.insert(
          DataBaseRequest.tableRole,
          Role(
            roleName: RoleEnum.admin.name,
          ).toMap());
      db.insert(
          DataBaseRequest.tableRole,
          Role(
            roleName: RoleEnum.user.name,
          ).toMap());

      db.insert(
          DataBaseRequest.tableAccount,
          Account(
            login: 'login',
            password: 'password',
            roleId: RoleEnum.admin.id,
          ).toMap());

      db.insert(
          DataBaseRequest.tableEmployee,
          Employee(
                  surname: 'surname',
                  name: 'name',
                  patronymic: 'patronymic',
                  accountId: 1)
              .toMap());

      db.insert(
          DataBaseRequest.tableCategory,
          Category(
            categoryName: 'categoryName',
          ).toMap());

      db.insert(
          DataBaseRequest.tableProvider,
          Provider(
            providerName: 'providerName',
            phone: '8806669696',
          ).toMap());

      db.insert(
          DataBaseRequest.tableProduct,
          Product(
                  productName: 'productName',
                  description: 'description',
                  providerId: 1,
                  categoryId: 1,
                  price: 9999,
                  count: 76)
              .toMap());
      db.insert(
          DataBaseRequest.tableCell,
          Cell(
            cellName: 'cellName',
            row: 10,
            column: 10,
          ).toMap());
      db.insert(
          DataBaseRequest.tableProductInCell,
          ProductInCell(
            productId: 1,
            cellId: 1,
          ).toMap());
      db.insert(
          DataBaseRequest.tableOrder,
          Order(
            employeeId: 1,
            productId: 1,
            date: DateTime.now().toString(),
            count: 69,
          ).toMap());
    } on DatabaseException catch (e) {}
  }
}
