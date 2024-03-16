import 'dart:io';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../../../core/common/utils/error/failure.dart';
import '../../domain/repository/story_repository.dart';
import '../datasource/remote/model/addnewstory/add_new_story_response.dart';
import '../datasource/remote/model/detailstory/detail_story_response.dart';
import '../datasource/remote/model/getstories/get_stories_response.dart';
import '../datasource/remote/story_remote_data_source.dart';

class StoryRepositoryImpl extends StoryRepository {
  final StoryRemoteDataSource _storyRemoteDataSource;

  StoryRepositoryImpl({
    required StoryRemoteDataSource storyRemoteDataSource,
  }) : _storyRemoteDataSource = storyRemoteDataSource;

  @override
  Future<Either<Failure, AddNewStoryResponse>> addNewStories({
    required String token,
    required String description,
    required File photo,
    double? lat,
    double? lon,
  }) async {
    try {
      final result = await _storyRemoteDataSource.addNewStories(
        token: token,
        description: description,
        photo: photo,
      );

      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          final data = AddNewStoryResponse.fromJson(e.response?.data);

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
  Future<Either<Failure, GetStoriesResponse>> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  }) async {
    try {
      final result = await _storyRemoteDataSource.getAllStories(
        token: token,
        page: page,
        size: size,
        location: location,
      );

      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          final data = GetStoriesResponse.fromJson(e.response?.data);

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
  Future<Either<Failure, DetailStoryResponse>> getStoryDetail({
    required String token,
    required int storyId,
  }) async {
    try {
      final result = await _storyRemoteDataSource.getStoryDetail(
        token: token,
        storyId: storyId,
      );

      return Right(result);
    } on Exception catch (e) {
      if (e is DioException) {
        if (e.response?.data != null) {
          final data = DetailStoryResponse.fromJson(e.response?.data);

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
