import 'package:dartz/dartz.dart';
import '../entities/auth_entity.dart';
import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Exception, UserEntity>> login({required AuthEntity authEntity});
  Future<Either<Exception, bool>> logout();
}
