// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListStoryResponseImpl _$$ListStoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListStoryResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      photoUrl: json['photoUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lat: json['lat'] as num?,
      lon: json['lon'] as num?,
    );

Map<String, dynamic> _$$ListStoryResponseImplToJson(
        _$ListStoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'photoUrl': instance.photoUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lat': instance.lat,
      'lon': instance.lon,
    };
