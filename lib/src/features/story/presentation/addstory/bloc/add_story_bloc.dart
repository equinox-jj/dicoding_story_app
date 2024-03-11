import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../../core/helper/shared_preferences_helper.dart';
import '../../../../../di/injector.dart';
import '../../../data/datasource/remote/model/addnewstory/add_new_story_response.dart';
import '../../../domain/repository/story_repository.dart';

part 'add_story_bloc.freezed.dart';
part 'add_story_event.dart';
part 'add_story_state.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  final prefs = sl<SharedPreferencesHelper>();
  final StoryRepository _storyRepository;

  AddStoryBloc(this._storyRepository) : super(const AddStoryInitial()) {
    on<AddStoryEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () => null,
        pickImageGallery: (_) async {
          final deviceInfo = DeviceInfoPlugin();
          final galleryStatusA13 = await Permission.photos.request();
          final galleryStatus = await Permission.storage.request();
          if (Platform.isAndroid) {
            final infoVersion = await deviceInfo.androidInfo;
            if (infoVersion.version.sdkInt >= 33) {
              if (galleryStatusA13.isDenied || galleryStatusA13.isPermanentlyDenied) {
                emit(const AddStoryState.error(
                  message: 'Gallery permission is denied',
                ));
                openAppSettings();
              } else {
                final imagePicker = ImagePicker();
                final pickedFile = await imagePicker.pickImage(
                  source: ImageSource.gallery,
                );
                final imagePath = await pickedFile?.readAsBytes();
                final fileSize = imagePath?.lengthInBytes;
                const maxFileSizeToUpload = 1 * 1048576;

                if (pickedFile != null) {
                  if ((fileSize ?? 0) <= maxFileSizeToUpload) {
                    emit(AddStoryState.pickImage(
                      image: XFile(pickedFile.path),
                    ));
                  } else {
                    emit(const AddStoryState.error(
                      message: 'Maximum image size is 1MB',
                    ));
                  }
                }
              }
            } else {
              if (galleryStatus.isDenied || galleryStatus.isPermanentlyDenied) {
                emit(const AddStoryState.error(
                  message: 'Gallery permission is denied',
                ));
                openAppSettings();
              } else {
                final imagePicker = ImagePicker();
                final pickedFile = await imagePicker.pickImage(
                  source: ImageSource.gallery,
                );
                final imagePath = await pickedFile?.readAsBytes();
                final fileSize = imagePath?.lengthInBytes;
                const maxFileSizeToUpload = 1 * 1048576;

                if (pickedFile != null) {
                  if ((fileSize ?? 0) <= maxFileSizeToUpload) {
                    emit(AddStoryState.pickImage(
                      image: XFile(pickedFile.path),
                    ));
                  } else {
                    emit(const AddStoryState.error(
                      message: 'Maximum image size is 1MB',
                    ));
                  }
                }
              }
            }
          }
        },
        pickImageCamera: (_) async {
          final cameraStatus = await Permission.camera.request();

          if (cameraStatus.isDenied || cameraStatus.isPermanentlyDenied) {
            emit(const AddStoryState.error(
              message: 'Camera permission is denied',
            ));
            openAppSettings();
          } else {
            final imagePicker = ImagePicker();
            final pickedFile = await imagePicker.pickImage(
              source: ImageSource.camera,
            );
            final imagePath = await pickedFile?.readAsBytes();
            final fileSize = imagePath?.lengthInBytes;
            const maxFileSizeToUpload = 1 * 1048576;

            if (pickedFile != null) {
              if ((fileSize ?? 0) <= maxFileSizeToUpload) {
                emit(AddStoryState.pickImage(
                  image: XFile(pickedFile.path),
                ));
              } else {
                emit(const AddStoryState.error(
                  message: 'Maximum image size is 1MB',
                ));
              }
            }
          }
        },
        uploadStory: (value) async {
          emit(const AddStoryState.loading());

          final token = await prefs.getToken;
          final result = await _storyRepository.addNewStories(
            token: token,
            description: value.description,
            photo: value.image,
          );

          result.fold(
            (failure) {
              final errorResponse = failure.object as AddNewStoryResponse?;

              emit(AddStoryState.error(
                message: errorResponse?.message ?? failure.message ?? '',
              ));
            },
            (success) {
              emit(AddStoryState.success(response: success));
            },
          );
        },
      );
    });
  }
}
