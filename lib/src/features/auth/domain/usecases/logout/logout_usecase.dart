import 'package:dartz/dartz.dart';

abstract class LogoutUsecase {
  Future<Either<Exception, bool>> call();
}
