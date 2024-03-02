part of 'list_story_bloc.dart';

@freezed
class ListStoryState with _$ListStoryState {
  const factory ListStoryState.initial() = ListStoryInitial;
  const factory ListStoryState.empty() = ListStoryEmpty;
  const factory ListStoryState.loading() = ListStoryLoading;
  const factory ListStoryState.success({List<ListStoryResponse>? response}) = ListStorySuccess;
  const factory ListStoryState.error({String? message}) = ListStoryError;
  const factory ListStoryState.logout() = ListStoryLogout;
}