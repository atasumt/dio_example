import 'package:dio/dio.dart';
import 'package:dio_youtube/dio/base_dio_interceptor.dart';

Dio getDio(BaseOptions baseOptions) {
  Dio dio = Dio(baseOptions);
  dio.interceptors.add(BaseDioInterceptor());
  return dio;
}
