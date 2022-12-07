import 'package:flutter_test/flutter_test.dart';
import 'package:mentoria_clean_arch/core/domain/services/data/dio_http_service_impl.dart';
import 'package:mentoria_clean_arch/src/features/auth/data/data_soucers/remote/auth_remote_datasoucer_impl.dart';
import 'package:mentoria_clean_arch/src/features/auth/domain/entities/auth_entity.dart';

void main() {
  final httpService = DioHttpServiceImpl();
  final authRemoteDatasoucerImpl = AuthRemoteDatasoucerImpl(
    httpService: httpService,
  );
  testWidgets('Testa chamada de login, esperando sucesso', (tester) async {
    final localEntity = AuthEntity(
      userName: 'leonardodias491@gmailcom',
      password: 'clean2022',
    );
    final result = authRemoteDatasoucerImpl.login(authEntity: localEntity);
  });
}
