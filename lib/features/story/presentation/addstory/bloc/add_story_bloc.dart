import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/story_repository.dart';

part 'add_story_bloc.freezed.dart';
part 'add_story_event.dart';
part 'add_story_state.dart';

class AddStoryBloc extends Bloc<AddStoryEvent, AddStoryState> {
  final StoryRepository _storyRepository;

  AddStoryBloc(this._storyRepository) : super(const _Initial()) {
    on<AddStoryEvent>((event, emit) {
    });
  }
}
