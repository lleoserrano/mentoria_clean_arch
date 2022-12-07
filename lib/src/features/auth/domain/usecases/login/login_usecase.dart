import 'package:dartz/dartz.dart';
import '../../entities/auth_entity.dart';
import '../../entities/user_entity.dart';

abstract class LoginUseCase {
  Future<Either<Exception, UserEntity>> call({required AuthEntity authEntity});
}
