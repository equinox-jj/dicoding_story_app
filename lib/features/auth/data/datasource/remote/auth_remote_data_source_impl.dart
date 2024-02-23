import 'package:dio/dio.dart';

import '../../../../../core/common/constants/constants.dart';
import 'auth_remote_data_source.dart';
import 'model/login/login_response.dart';
import 'model/register/register_response.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final _dio = Dio(BaseOptions(
    baseUrl: Constants.BASE_URL,
    connectTimeout: const Duration(seconds: 5),
    sendTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ))
    ..interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

  @override
  Future<RegisterResponse> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await _dio.post(Constants.REGISTER_EP, data: {
      'name': name,
      'email': email,
      'password': password,
    });

    if (result.statusCode == 201) {
      return RegisterResponse.fromJson(result.data);
    } else {
      throw Exception();
    }
  }

  @override
  Future<LoginResponse> loginUser({
    required String email,
    required String password,
  }) async {
    final result = await _dio.post(Constants.LOGIN_EP, data: {
      'email': email,
      'password': password,
    });

    if (result.statusCode == 200) {
      return LoginResponse.fromJson(result.data);
    } else {
      throw Exception();
    }
  }
}
