import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/story_repository.dart';

part 'list_story_bloc.freezed.dart';
part 'list_story_event.dart';
part 'list_story_state.dart';

class ListStoryBloc extends Bloc<ListStoryEvent, ListStoryState> {
  final StoryRepository _storyRepository;

  ListStoryBloc(this._storyRepository) : super(const _Initial()) {
    on<ListStoryEvent>((event, emit) {
    });
  }
}
