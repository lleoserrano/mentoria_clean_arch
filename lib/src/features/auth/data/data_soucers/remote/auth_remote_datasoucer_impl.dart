import 'package:dartz/dartz.dart';

import '../../../../../../core/domain/http_service.dart';
import '../../../../../../core/utils/core_const.dart';
import '../../../domain/entities/auth_entity.dart';
import '../../../domain/entities/user_entity.dart';
import '../../dtos/auth_dto.dart';
import '../../dtos/user_dto.dart';
import '../auth_datasource.dart';

class AuthRemoteDatasoucerImpl implements AuthDatasource {
  final HttpService httpService;
  AuthRemoteDatasoucerImpl({
    required this.httpService,
  });
  @override
  Future<Either<Exception, UserEntity>> login(
      {required AuthEntity authEntity}) async {
    try {
      //Login call
      final result = await httpService.post(
        CoreConst.apiLoginUrl.value,
        data: authEntity.toJson(),
      );
      return Right(UserDto.fromMap(result.data as Map<String, dynamic>));
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
