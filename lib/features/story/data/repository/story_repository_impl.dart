import 'dart:io';

import '../datasource/remote/model/addnewstory/add_new_story_response.dart';
import '../datasource/remote/model/detailstory/detail_story_response.dart';
import '../datasource/remote/model/getstories/get_stories_response.dart';
import '../datasource/remote/story_remote_data_source.dart';
import '../../domain/repository/story_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

class StoryRepositoryImpl extends StoryRepository {
  final StoryRemoteDataSource _storyRemoteDataSource;

  StoryRepositoryImpl({
    required StoryRemoteDataSource storyRemoteDataSource,
  }) : _storyRemoteDataSource = storyRemoteDataSource;

  @override
  Future<Either<Exception, AddNewStoryResponse>> addNewStories({
    required String token,
    required String description,
    required File photo,
    num? lat,
    num? lon,
  }) async {
    try {
      final result = await _storyRemoteDataSource.addNewStories(
        token: token,
        description: description,
        photo: photo,
      );

      return Right(result);
    } on DioException catch (e) {
      return Left(Exception(e.message));
    }
  }

  @override
  Future<Either<Exception, GetStoriesResponse>> getAllStories({
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
    } on DioException catch (e) {
      return Left(Exception(e.message));
    }
  }

  @override
  Future<Either<Exception, DetailStoryResponse>> getStoryDetail({
    required String token,
    required int storyId,
  }) async {
    try {
      final result = await _storyRemoteDataSource.getStoryDetail(
        token: token,
        storyId: storyId,
      );

      return Right(result);
    } on DioException catch (e) {
      return Left(Exception(e.message));
    }
  }
}
