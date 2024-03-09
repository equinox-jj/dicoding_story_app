part of 'list_story_bloc.dart';

@freezed
class ListStoryEvent with _$ListStoryEvent {
  const factory ListStoryEvent.getListStory({
    required int index,
  }) = _OnGetListStory;
  const factory ListStoryEvent.logout() = _OnLogoutClicked;
}
