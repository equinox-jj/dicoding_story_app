import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../../../core/common/utils/error/failure.dart';
import '../../domain/repository/auth_repository.dart';
import '../datasource/remote/auth_remote_data_source.dart';
import '../datasource/remote/model/login/login_response.dart';
import '../datasource/remote/model/register/register_response.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl({
    required AuthRemoteDataSource authRemoteDataSource,
  }) : _authRemoteDataSource = authRemoteDataSource;

  @override
  Future<Either<Failure, RegisterResponse>> registerUser({
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
    } on Exception catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          final data = RegisterResponse.fromJson(e.response?.data);

          return Left(ServerFailure.fromDioException(object: data));
        }

        return Left(ServerFailure.fromDioException(dioException: e));
      } else {
        return Left(ServerFailure(message: e.toString()));
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> loginUser({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _authRemoteDataSource.loginUser(
        email: email,
        password: password,
      );

      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          final data = LoginResponse.fromJson(e.response?.data);

          return Left(ServerFailure.fromDioException(object: data));
        }

        return Left(ServerFailure.fromDioException(dioException: e));
      } else {
        return Left(ServerFailure(message: e.toString()));
      }
    } catch (e) {
      rethrow;
    }
  }
}
