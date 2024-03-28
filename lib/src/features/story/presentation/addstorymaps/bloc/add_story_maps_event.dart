part of 'add_story_maps_bloc.dart';

@freezed
class AddStoryMapsEvent with _$AddStoryMapsEvent {
  const factory AddStoryMapsEvent.started() = _Started;
}