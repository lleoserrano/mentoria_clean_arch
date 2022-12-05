import 'package:dartz/dartz.dart';
import '../../entities/user_entity.dart';

abstract class LoginUseCase {
  Future<Either<Exception, UserEntity>> call();
}
