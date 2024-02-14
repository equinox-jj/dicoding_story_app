import 'package:dicoding_story_app/core/common/constants/constants.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/auth_remote_data_source.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/register/register_response.dart';
import 'package:dio/dio.dart';

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
}
