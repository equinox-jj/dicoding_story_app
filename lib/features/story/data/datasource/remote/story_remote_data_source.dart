import 'dart:io';

import 'model/addnewstory/add_new_story_response.dart';
import 'model/detailstory/detail_story_response.dart';

import 'model/getstories/get_stories_response.dart';

abstract class StoryRemoteDataSource {
  Future<AddNewStoryResponse> addNewStories({
    required String token,
    required String description,
    required File photo,
    num? lat,
    num? lon,
  });
  Future<GetStoriesResponse> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  });
  Future<DetailStoryResponse> getStoryDetail({
    required String token,
    required int storyId,
  });
}
