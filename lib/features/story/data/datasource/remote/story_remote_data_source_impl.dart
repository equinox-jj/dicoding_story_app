import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/common/constants/constants.dart';
import 'model/addnewstory/add_new_story_response.dart';
import 'model/detailstory/detail_story_response.dart';
import 'model/getstories/get_stories_response.dart';
import 'story_remote_data_source.dart';

class StoryRemoteDataSourceImpl extends StoryRemoteDataSource {
  final _dio = Dio(BaseOptions(
    baseUrl: Constants.BASE_URL,
    connectTimeout: const Duration(seconds: 5),
    sendTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ))
    ..interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

  @override
  Future<AddNewStoryResponse> addNewStories({
    required String token,
    required String description,
    required File photo,
    num? lat,
    num? lon,
  }) async {
    final fileName = photo.path.split('/').last;
    final result = await _dio.post(
      Constants.STORIES_EP,
      data: {
        'description': description,
        'photo': MultipartFile.fromFile(photo.path, filename: fileName),
        'lat': lat,
        'lon': lon,
      },
      options: Options(headers: {
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Bearer $token',
      }),
    );

    if (result.statusCode == 201) {
      return AddNewStoryResponse.fromJson(result.data);
    } else {
      throw Exception();
    }
  }

  @override
  Future<GetStoriesResponse> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  }) async {
    final result = await _dio.get(
      Constants.STORIES_EP,
      queryParameters: {
        'page': page,
        'size': size,
        'location': location,
      },
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );

    if (result.statusCode == 200) {
      return GetStoriesResponse.fromJson(result.data);
    } else {
      throw Exception();
    }
  }

  @override
  Future<DetailStoryResponse> getStoryDetail({
    required String token,
    required int storyId,
  }) async {
    final result = await _dio.get(
      Constants.DETAIL_STORIES_EP,
      options: Options(headers: {
        'Authorization': 'Bearer $token',
      }),
    );

    if (result.statusCode == 200) {
      return DetailStoryResponse.fromJson(result.data);
    } else {
      throw Exception();
    }
  }
}
