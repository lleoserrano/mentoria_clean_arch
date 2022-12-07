import 'package:dartz/dartz.dart';

import '../../entities/auth_entity.dart';
import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import 'login_usecase.dart';

class LoginUsecaseImpl implements LoginUseCase {
  final AuthRepository repository;

  LoginUsecaseImpl({
    required this.repository,
  });

  @override
  Future<Either<Exception, UserEntity>> call(
          {required AuthEntity authEntity}) async =>
      await repository.login(authEntity: authEntity);
}
