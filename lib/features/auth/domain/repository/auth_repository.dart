import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/register/register_response.dart';
import 'package:either_dart/either.dart';

abstract class AuthRepository {
  Future<Either<Exception, RegisterResponse>> registerUser({
    required String name,
    required String email,
    required String password,
  });
}
