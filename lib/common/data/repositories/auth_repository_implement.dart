import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/common/data/model/account.dart';
import 'package:flutter_application_1/common/data_base_request.dart';
import 'package:flutter_application_1/core/db/data_base_helper.dart';
import 'package:flutter_application_1/domain/entity/roleEntity.dart';
import 'package:flutter_application_1/domain/repositories/auth_repository.dart';

import 'package:sqflite/sqflite.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final _db = DataBaseHelper.instance.dataBase;

  String table = DataBaseRequest.tableAccount;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async {
    try {
      var account = await _db.query(
        table,
        where: 'login = ?',
        whereArgs: [login],
      );
      if (account.isEmpty) {
        return const Left('Такого пользователя нет');
      }
      if (account.first['password'] != password) {
        return const Left('Пароль пользователя неверный');
      }
      return Right(RoleEnum.values[(account.first['roleId'] as int) - 1]);
    } on DatabaseException catch (error) {
      return Left(error.result.toString());
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password) async {
    try {
      _db.insert(
          table,
          Account(login: login, password: password, roleId: RoleEnum.user.id)
              .toMap());
      return const Right(true);
    } on DatabaseException catch (error) {
      return const Left("Ошибка");
    }
  }
}
