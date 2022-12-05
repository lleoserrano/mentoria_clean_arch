import 'package:dartz/dartz.dart';
import '../../entities/user_entity.dart';

abstract class LoginUsecase {
  Future<Either<Exception, UserEntity>> call();
}
