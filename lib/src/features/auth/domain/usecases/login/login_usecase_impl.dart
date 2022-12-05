import 'package:dartz/dartz.dart';

import '../../entities/user_entity.dart';
import '../../repositories/auth_repository.dart';
import 'login_usecase.dart';

class LoginUsecaseImpl implements LoginUsecase {
  final AuthRepository repository;

  LoginUsecaseImpl({
    required this.repository,
  });

  @override
  Future<Either<Exception, UserEntity>> call() async =>
      await repository.login();
}
