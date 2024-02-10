// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_stories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetStoriesResponseImpl _$$GetStoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetStoriesResponseImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      listStory: json['listStory'] == null
          ? null
          : ListStoryResponse.fromJson(
              json['listStory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetStoriesResponseImplToJson(
        _$GetStoriesResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'listStory': instance.listStory,
    };
