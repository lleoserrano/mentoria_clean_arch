import 'package:dio/dio.dart';

import '../../../utils/core_const.dart';
import '../../http_service.dart';

class DioHttpServiceImpl implements HttpService {
  late Dio dio;

  DioHttpServiceImpl() {
    dio = Dio(
      BaseOptions(
        baseUrl: CoreConst.apiBaseUrl.value,
      ),
    );
  }

  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, dynamic>? queryParameters}) {
    return dio.get<T>(url, queryParameters: queryParameters);
  }

  @override
  Future<Response<T>> post<T>(String url,
      {Map<String, dynamic>? queryParameters, data}) {
    return dio.post<T>(url, queryParameters: queryParameters, data: data);
  }
}
