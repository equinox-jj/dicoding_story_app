import 'model/login/login_response.dart';
import 'model/register/register_response.dart';

abstract class AuthRemoteDataSource {
  Future<RegisterResponse> registerUser({
    required String name,
    required String email,
    required String password,
  });
  Future<LoginResponse>loginUser({
    required String email,
    required String password,
  });
}
