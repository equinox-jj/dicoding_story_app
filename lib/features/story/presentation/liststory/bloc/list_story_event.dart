part of 'list_story_bloc.dart';

@freezed
class ListStoryEvent with _$ListStoryEvent {
  const factory ListStoryEvent.getListStory({
    int? page,
    int? size,
    int? location,
  }) = _OnGetListStory;
  const factory ListStoryEvent.logout() = _OnLogoutClicked;
}