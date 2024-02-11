import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_response.freezed.dart';
part 'story_response.g.dart';

@freezed
class StoryResponse with _$StoryResponse {
  factory StoryResponse({
    required String? id,
    required String? name,
    required String? description,
    required String? photoUrl,
    required DateTime? createdAt,
    required num? lat,
    required num? long,
  }) = _StoryResponse;

  factory StoryResponse.fromJson(Map<String, dynamic> json) =>
      _$StoryResponseFromJson(json);
}
