import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioInterceptorWrapper extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      print("= = = Dio Request = = =");
      print(options.headers);
      print(options.contentType);
      print(options.extra);
      print("${options.baseUrl}${options.path}");
      print(options.data);
    }

    return handler.next(options);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (kDebugMode) {
      print("= = = Dio Error Response = = =");
      print('Error Response: ${err.response}');
      print('Error Message: ${err.message}');
      print('Error Type: ${err.type}');
    }

    return handler.next(err);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    if (kDebugMode) {
      print("= = = Dio Success Response = = =");
      print(response.headers);
      print(
        response.requestOptions.baseUrl + response.requestOptions.path,
      );
      print(response.statusCode);
      print(response.extra);
      print(jsonEncode(response.data));
    }

    return handler.next(response);
  }
}
