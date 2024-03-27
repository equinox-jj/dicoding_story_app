part of 'list_story_bloc.dart';

@freezed
class ListStoryEvent with _$ListStoryEvent {
  const factory ListStoryEvent.getListStory() = _OnGetListStory;
  const factory ListStoryEvent.onRefresh() = _OnGetListStoryRefresh;
  const factory ListStoryEvent.logout() = _OnLogoutClicked;
}
