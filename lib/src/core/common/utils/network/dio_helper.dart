import 'package:dio/dio.dart';

import '../../constants/constants.dart';

class DioHelper {
  static DioHelper? _instance;

  DioHelper._internal() {
    _instance = this;
  }

  factory DioHelper() => _instance ?? DioHelper._internal();

  Dio _dio = Dio();

  void init() {
    _dio = Dio(
      BaseOptions(
          baseUrl: Constants.BASE_URL,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
          headers: {'Accept': 'application/json'}),
    )..interceptors.add(LogInterceptor());
  }

  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
    String? token,
  }) async {
    _dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};

    return await _dio.get(
      path,
      data: data,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
      options: options,
      queryParameters: queryParameters,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    String? token,
  }) async {
    _dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};

    return await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onReceiveProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    String? token,
  }) async {
    _dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};

    return await _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> patch<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
    String? token,
  }) async {
    _dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};

    return await _dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    String? token,
  }) async {
    _dio.options.headers = {'Authorization': 'Bearer ${token ?? ''}'};

    return await _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
