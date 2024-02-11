import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/register/register_response.dart';

abstract class AuthRemoteDataSource {
  Future<RegisterResponse> registerUser({
    required String name,
    required String email,
    required String password,
  });
}
