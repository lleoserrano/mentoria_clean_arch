import 'package:dio/dio.dart';

import '../../http_service.dart';

class DioHttpServiceImpl implements HttpService {
  late Dio dio;

  DioHttpServiceImpl() {
    dio = Dio();
  }

  @override
  Future<Response<T>> get<T>(String url,
      {Map<String, dynamic>? queryParameters}) {
    return dio.get<T>(url, queryParameters: queryParameters);
  }
}
