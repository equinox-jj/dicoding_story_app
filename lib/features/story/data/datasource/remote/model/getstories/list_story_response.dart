import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_story_response.freezed.dart';
part 'list_story_response.g.dart';

@freezed
class ListStoryResponse with _$ListStoryResponse {
  factory ListStoryResponse({
    required String? id,
    required String? name,
    required String? description,
    required String? photoUrl,
    required DateTime? createdAt,
    required num? lat,
    required num? lon,
  }) = _ListStoryResponse;

  factory ListStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ListStoryResponseFromJson(json);
}
