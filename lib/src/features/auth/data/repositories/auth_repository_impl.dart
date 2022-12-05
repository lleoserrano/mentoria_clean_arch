import 'package:dartz/dartz.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_soucers/auth_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource datasource;
  AuthRepositoryImpl({
    required this.datasource,
  });
  @override
  Future<Either<Exception, UserEntity>> login() async =>
      await datasource.login();

  @override
  Future<Either<Exception, bool>> logout() async => await datasource.logout();
}
