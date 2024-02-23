import 'package:bloc/bloc.dart';
import '../../../domain/repository/story_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_story_bloc.freezed.dart';
part 'add_story_event.dart';
part 'add_story_state.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  final StoryRepository _storyRepository;

  AddStoryBloc(this._storyRepository) : super(_Initial()) {
    on<AddStoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
