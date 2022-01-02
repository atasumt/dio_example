import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class BaseDioInterceptor extends Interceptor {
  InterceptorsWrapper baseDioInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onResponse: (response, handler) {
        if (response.requestOptions.data != null) {
          debugPrint(
              'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');

          return handler.next(response);
        }
      },
      onError: (DioError e, handler) {
        if (e.requestOptions.data != null) {
          var requestData = e.requestOptions.data;
          debugPrint("RQUEST DATA:  ${requestData.toString()}");
        }
        return handler.next(e);
      },
    );
  }
}
