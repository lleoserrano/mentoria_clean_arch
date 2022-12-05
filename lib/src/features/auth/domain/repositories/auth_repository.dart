import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Exception, UserEntity>> login();
  Future<Either<Exception, bool>> logout();
}
