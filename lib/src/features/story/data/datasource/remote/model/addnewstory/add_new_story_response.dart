import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_story_response.freezed.dart';
part 'add_new_story_response.g.dart';

@freezed
class AddNewStoryResponse with _$AddNewStoryResponse {
  factory AddNewStoryResponse({
    required bool? error,
    required String? message,
  }) = _AddNewStoryResponse;

  factory AddNewStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddNewStoryResponseFromJson(json);
}
