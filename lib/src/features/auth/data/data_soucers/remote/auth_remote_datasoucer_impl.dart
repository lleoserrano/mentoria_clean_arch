import 'package:dartz/dartz.dart';

import '../../../domain/entities/user_entity.dart';
import '../../dtos/user_dto.dart';
import '../auth_datasource.dart';

class AuthRemoteDatasoucerImpl implements AuthDatasource {
  final fake = {'name': 'Leonardo Serrano', 'email': ' '};
  @override
  Future<Either<Exception, UserEntity>> login() async {
    try {
      //Login call
      await Future.delayed(const Duration(seconds: 2));
      return Right(UserDto.fromJson(fake));
    } catch (e) {
      return Left(Exception('Falha login'));
    }
  }

  @override
  Future<Either<Exception, bool>> logout() async {
    try {
      //Logout call
      await Future.delayed(const Duration(seconds: 2));
      return const Right(true);
    } catch (e) {
      return Left(Exception('Falha Logout'));
    }
  }
}
