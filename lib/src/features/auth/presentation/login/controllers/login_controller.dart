import '../../../domain/entities/auth_entity.dart';
import '../../../domain/usecases/login/login_usecase.dart';

class LoginController {
  final LoginUseCase _loginUseCase;

  LoginController(this._loginUseCase);

  Future<void> login(String email, String password) async {
    final result = await _loginUseCase(
      authEntity: AuthEntity(userName: 'email', password: 'password'),
    );

    result.fold(
      (error) => print('Error: $error'),
      (success) => print('Success: $success'),
    );
  }
}
