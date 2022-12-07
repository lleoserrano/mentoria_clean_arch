import 'package:dartz/dartz.dart';

import '../../repositories/auth_repository.dart';
import 'logout_usecase.dart';

class LogoutUsecaseImpl implements LogoutUsecase {
  final AuthRepository repository;
  LogoutUsecaseImpl({
    required this.repository,
  });
  @override
  Future<Either<Exception, bool>> call() async => await repository.logout();
}
