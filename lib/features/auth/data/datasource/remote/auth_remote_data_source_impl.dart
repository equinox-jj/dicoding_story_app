import 'package:dicoding_story_app/core/common/utils/network/dio_helper.dart';

import '../../../../../core/common/constants/constants.dart';
import 'auth_remote_data_source.dart';
import 'model/login/login_response.dart';
import 'model/register/register_response.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<RegisterResponse> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    final result = await DioHelper.post(Constants.REGISTER_EP, data: {
      'name': name,
      'email': email,
      'password': password,
    });

    if (result.statusCode == 201) {
      return RegisterResponse.fromJson(result.data);
    } else {
      throw Exception(result.statusMessage);
    }
  }

  @override
  Future<LoginResponse> loginUser({
    required String email,
    required String password,
  }) async {
    final result = await DioHelper.post(Constants.LOGIN_EP, data: {
      'email': email,
      'password': password,
    });

    if (result.statusCode == 200) {
      return LoginResponse.fromJson(result.data);
    } else {
      throw Exception(result.statusMessage);
    }
  }
}
