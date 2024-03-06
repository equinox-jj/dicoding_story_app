part of 'list_story_bloc.dart';

@freezed
class ListStoryEvent with _$ListStoryEvent {
  const factory ListStoryEvent.getListStory() = _OnGetListStory;
  const factory ListStoryEvent.logout() = _OnLogoutClicked;
  const factory ListStoryEvent.sortByDateTime(int value) = _OnSortByDateTimeClicked;
}