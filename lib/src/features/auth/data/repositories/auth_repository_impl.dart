import 'package:dartz/dartz.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_soucers/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;
  AuthRepositoryImpl({
    required this.datasource,
  });
  @override
  Future<Either<Exception, UserEntity>> login(
          {required AuthEntity authEntity}) async =>
      await datasource.login(authEntity: authEntity);

  @override
  Future<Either<Exception, bool>> logout() async => await datasource.logout();
}
