import 'package:freezed_annotation/freezed_annotation.dart';

import 'story_response.dart';

part 'detail_story_response.freezed.dart';
part 'detail_story_response.g.dart';

@freezed
class DetailStoryResponse with _$DetailStoryResponse {
  factory DetailStoryResponse({
    required bool? error,
    required String? message,
    required StoryResponse? story,
  }) = _DetailStoryResponse;

  factory DetailStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailStoryResponseFromJson(json);
}
