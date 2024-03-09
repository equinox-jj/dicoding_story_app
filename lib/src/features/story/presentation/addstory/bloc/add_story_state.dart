part of 'add_story_bloc.dart';

@freezed
class AddStoryState with _$AddStoryState {
  const factory AddStoryState.initial() = AddStoryInitial;
  const factory AddStoryState.loading() = AddStoryLoading;
  const factory AddStoryState.error({
    @Default('') String message,
  }) = AddStoryError;
  const factory AddStoryState.success({
    AddNewStoryResponse? response,
  }) = AddStorySuccess;
  const factory AddStoryState.pickImage({XFile? image}) = AddStoryPickImage;
}
