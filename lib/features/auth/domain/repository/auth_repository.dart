import 'package:dicoding_story_app/core/common/utils/error/failure.dart';

import '../../data/datasource/remote/model/login/login_response.dart';
import 'package:either_dart/either.dart';

import '../../data/datasource/remote/model/register/register_response.dart';

abstract class AuthRepository {
  Future<Either<Failure, RegisterResponse>> registerUser({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, LoginResponse>> loginUser({
    required String email,
    required String password,
  });
}
