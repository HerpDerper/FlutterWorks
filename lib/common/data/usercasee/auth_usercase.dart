import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/entity/roleEntity.dart';

abstract class AuthUserCase<String, Params> {
  Future<Either<String, RoleEnum>> singIn(Params params);
  Future<Either<String, bool>> signUp(Params params);
}
