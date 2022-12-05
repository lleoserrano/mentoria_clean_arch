import 'package:dartz/dartz.dart';

import '../../../../../../core/domain/http_service.dart';
import '../../../domain/entities/user_entity.dart';
import '../../dtos/user_dto.dart';
import '../auth_datasource.dart';

class AuthRemoteDatasoucerImpl implements AuthDatasource {
  final HttpService httpService;
  AuthRemoteDatasoucerImpl({
    required this.httpService,
  });
  @override
  Future<Either<Exception, UserEntity>> login() async {
    try {
      //Login call
      final result = await httpService.get('');
      return Right(UserDto.fromJson(result.data));
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
