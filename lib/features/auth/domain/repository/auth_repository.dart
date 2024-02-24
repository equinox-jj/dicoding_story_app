import 'package:either_dart/either.dart';

import '../../data/datasource/remote/model/register/register_response.dart';

abstract class AuthRepository {
  Future<Either<Exception, RegisterResponse>> registerUser({
    required String name,
    required String email,
    required String password,
  });
}
