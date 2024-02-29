import '../datasource/remote/model/login/login_response.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../domain/repository/auth_repository.dart';
import '../datasource/remote/auth_remote_data_source.dart';
import '../datasource/remote/model/register/register_response.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl({
    required AuthRemoteDataSource authRemoteDataSource,
  }) : _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<Either<Exception, RegisterResponse>> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authRemoteDataSource.registerUser(
        name: name,
        email: email,
        password: password,
      );

      return Right(result);
    } on DioException catch (e) {
      return Left(Exception(e.message));
    }
  }

  @override
  Future<Either<Exception, LoginResponse>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authRemoteDataSource.loginUser(
        email: email,
        password: password,
      );

      return Right(result);
    } on DioException catch (e) {
      return Left(Exception(e.message));
    }
  }
}
