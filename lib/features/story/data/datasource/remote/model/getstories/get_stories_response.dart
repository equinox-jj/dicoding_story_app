import 'package:dicoding_story_app/features/story/data/datasource/remote/model/getstories/list_story_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_stories_response.freezed.dart';
part 'get_stories_response.g.dart';

@freezed
class GetStoriesResponse with _$GetStoriesResponse {
  factory GetStoriesResponse({
    required bool? error,
    required String? message,
    required ListStoryResponse? listStory,
  }) = _GetStoriesResponse;

  factory GetStoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStoriesResponseFromJson(json);
}
