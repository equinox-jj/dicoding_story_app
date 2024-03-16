import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../../core/common/constants/constants.dart';
import '../../../../../core/common/utils/network/dio_helper.dart';
import 'model/addnewstory/add_new_story_response.dart';
import 'model/detailstory/detail_story_response.dart';
import 'model/getstories/get_stories_response.dart';
import 'story_remote_data_source.dart';

class StoryRemoteDataSourceImpl extends StoryRemoteDataSource {
  final dio = DioHelper();

  @override
  Future<AddNewStoryResponse> addNewStories({
    required String token,
    required String description,
    required File photo,
    double? lat,
    double? lon,
  }) async {
    final fileName = photo.path.split('/').last;
    final formData = FormData.fromMap({
      'lat': lat,
      'lon': lon,
      'description': description,
      'photo': photo.path.isNotEmpty
          ? await MultipartFile.fromFile(
              photo.path,
              filename: fileName,
            )
          : null,
    });
    final result = await dio.post(
      Constants.STORIES_EP,
      token: token,
      data: formData,
      options: Options(headers: {
        'Content-Type': 'multipart/form-data',
      }),
    );

    if (result.statusCode == 201) {
      return AddNewStoryResponse.fromJson(result.data);
    } else {
      throw Exception(result.statusMessage);
    }
  }

  @override
  Future<GetStoriesResponse> getAllStories({
    required String token,
    int? page,
    int? size,
    int? location,
  }) async {
    final result = await dio.get(
      Constants.STORIES_EP,
      token: token,
      queryParameters: {
        'page': page,
        'size': size,
        'location': location,
      },
    );

    if (result.statusCode == 200) {
      return GetStoriesResponse.fromJson(result.data);
    } else {
      throw Exception(result.statusMessage);
    }
  }

  @override
  Future<DetailStoryResponse> getStoryDetail({
    required String token,
    required int storyId,
  }) async {
    final result = await dio.get(
      Constants.DETAIL_STORIES_EP,
      token: token,
    );

    if (result.statusCode == 200) {
      return DetailStoryResponse.fromJson(result.data);
    } else {
      throw Exception(result.statusMessage);
    }
  }
}
