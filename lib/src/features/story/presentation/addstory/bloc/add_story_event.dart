part of 'add_story_bloc.dart';

@freezed
class AddStoryEvent with _$AddStoryEvent {
  const factory AddStoryEvent.uploadStory({
    required String description,
    required File image,
    double? lat,
    double? lon,
  }) = _UploadStory;
  const factory AddStoryEvent.pickImageGallery() = _PickImageGallery;
  const factory AddStoryEvent.pickImageCamera() = _PickImageCamera;
}
