import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_story_maps_bloc.freezed.dart';
part 'add_story_maps_event.dart';
part 'add_story_maps_state.dart';

class AddStoryMapsBloc extends Bloc<AddStoryMapsEvent, AddStoryMapsState> {
  AddStoryMapsBloc() : super(const _Initial()) {
    on<AddStoryMapsEvent>((event, emit) {});
  }
}
