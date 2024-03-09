// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryResponseImpl _$$StoryResponseImplFromJson(Map<String, dynamic> json) =>
    _$StoryResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lat: json['lat'] as num?,
      long: json['long'] as num?,
    );

Map<String, dynamic> _$$StoryResponseImplToJson(_$StoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lat': instance.lat,
      'long': instance.long,
    };
