import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/entity/roleEntity.dart';

abstract class AuthRepository {
  Future<Either<String, RoleEnum>> signIn(String login, String password);
  Future<Either<String, bool>> signUp(String login, String password);
}
