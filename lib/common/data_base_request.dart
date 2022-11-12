abstract class DataBaseRequest {
  static String deleteTable(String table) => 'drop table $table';

  static const String tableRole = 'Role';
  static const String tableAccount = 'Account';
  static const String tableEmployee = 'Employee';
  static const String tableCategory = 'Category';
  static const String tableProvider = 'Provider';
  static const String tableProduct = 'Product';
  static const String tableCell = 'Cell';
  static const String tableProductInCell = 'ProductInCell';
  static const String tableOrder = 'Order';

  static const List<String> tableList = [
    tableRole,
    tableAccount,
    tableEmployee,
    tableCategory,
    tableProvider,
    tableProduct,
    tableCell,
    tableProductInCell,
    tableOrder
  ];

  static const List<String> createTableList = [
    _createTableRole,
    _createTableAccount,
    _createTableEmployee,
    _createTableCategory,
    _createTableProvider,
    _createTableProduct,
    _createTableCell,
    _createTableProductInCell,
    _createTableOrder
  ];

  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER, "roleName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableAccount =
      'CREATE TABLE "$tableAccount" ("id" INTEGER, "login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL, "id_role" INTEGER, FOREIGN KEY("id_role") REFERENCES "Role"("id"), PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableEmployee =
      'CREATE TABLE "$tableEmployee" ("id" INTEGER, "surname" TEXT NOT NULL, "name" TEXT NOT NULL, "patronymic" TEXT NOT NULL, "id_account" INTEGER, FOREIGN KEY("id_account") REFERENCES "Account"("id"),PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCategory =
      'CREATE TABLE "$tableCategory" ("id" INTEGER, "categoryName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id" INTEGER, "providerName" TEXT NOT NULL UNIQUE, "phone" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProduct =
      'CREATE TABLE "$tableProvider" ("id" INTEGER, "productName" TEXT NOT NULL UNIQUE, "description" TEXT NOT NULL, "price" INTEGER NOT NULL, "count" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableCell =
      'CREATE TABLE "$tableCell" ("id" INTEGER, "cellName" TEXT NOT NULL UNIQUE, "row" INTEGER NOT NULL, "column" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProductInCell =
      'CREATE TABLE "$tableProductInCell" ("id" INTEGER, "id_product" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"), "id_cell" INTEGER, FOREIGN KEY("id_cell") REFERENCES "Cell"("id"), PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableOrder =
      'CREATE TABLE "$tableOrder" ("id" INTEGER, "id_product" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"), "id_employee" INTEGER, FOREIGN KEY("id_employee") REFERENCES "Employee"("id"), "countProduct" DATETIME NOT NULL, "countProduct" INTEGER NOT NULL, PRIMARY KEY("id" AUTOINCREMENT))';
}
