import 'package:dartz/dartz.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/entities/user_entity.dart';

abstract class AuthDatasource {
  Future<Either<Exception, UserEntity>> login({required AuthEntity authEntity});
  Future<Either<Exception, bool>> logout();
}
