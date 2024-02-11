import 'package:dicoding_story_app/features/auth/data/datasource/remote/auth_remote_data_source.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/register/register_response.dart';
import 'package:dicoding_story_app/features/auth/domain/repository/auth_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/src/either.dart';

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
}
