import 'dart:io';

import 'package:either_dart/either.dart';

import '../../data/datasource/remote/model/addnewstory/add_new_story_response.dart';
import '../../data/datasource/remote/model/detailstory/detail_story_response.dart';
import '../../data/datasource/remote/model/getstories/get_stories_response.dart';

abstract class StoryRepository {
  Future<Either<Exception, AddNewStoryResponse>> addNewStories({
    required String token,
    required String description,
    required File photo,
    num? lat,
    num? lon,
  });
  Future<Either<Exception, GetStoriesResponse>> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  });
  Future<Either<Exception, DetailStoryResponse>> getStoryDetail({
    required String token,
    required int storyId,
  });
}
