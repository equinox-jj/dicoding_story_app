part of 'add_story_bloc.dart';

@freezed
class AddStoryEvent with _$AddStoryEvent {
  const factory AddStoryEvent.uploadStory({
    required File image,
    required String description,
  }) = _UploadStory;
  const factory AddStoryEvent.pickImageGallery() = _PickImageGallery;
  const factory AddStoryEvent.pickImageCamera() = _PickImageCamera;
}
