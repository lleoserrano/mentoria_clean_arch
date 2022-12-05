import '../../../domain/usecases/login/login_usecase.dart';

class LoginController {
  final LoginUseCase _loginUseCase;

  LoginController(this._loginUseCase);

  Future<void> login(String email, String password) async {
    final result = await _loginUseCase();

    result.fold(
      (error) => print('Error: $error'),
      (success) => print('Success: $success'),
    );
  }
}
