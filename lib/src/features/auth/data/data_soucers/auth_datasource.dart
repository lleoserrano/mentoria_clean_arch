import 'package:dartz/dartz.dart';

import '../../domain/entities/user_entity.dart';

abstract class AuthDatasource {
  Future<Either<Exception, UserEntity>> login();
  Future<Either<Exception, bool>> logout();
}
