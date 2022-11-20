import 'package:flutter_application_1/domain/entity/roleEntity.dart';

class AccountEntity {
  late int id;
  final String login;
  final String password;
  final int roleId;

  AccountEntity(
      {required this.login, required this.password, required this.roleId});
}
