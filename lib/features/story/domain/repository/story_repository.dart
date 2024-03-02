import 'dart:io';

import 'package:dicoding_story_app/core/common/utils/error/failure.dart';
import 'package:either_dart/either.dart';

import '../../data/datasource/remote/model/addnewstory/add_new_story_response.dart';
import '../../data/datasource/remote/model/detailstory/detail_story_response.dart';
import '../../data/datasource/remote/model/getstories/get_stories_response.dart';

abstract class StoryRepository {
  Future<Either<Failure, AddNewStoryResponse>> addNewStories({
    required String token,
    required String description,
    required File photo,
    num? lat,
    num? lon,
  });
  Future<Either<Failure, GetStoriesResponse>> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  });
  Future<Either<Failure, DetailStoryResponse>> getStoryDetail({
    required String token,
    required int storyId,
  });
}
