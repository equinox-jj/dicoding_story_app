import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repository/story_repository.dart';

part 'story_detail_bloc.freezed.dart';
part 'story_detail_event.dart';
part 'story_detail_state.dart';

class StoryDetailBloc extends Bloc<StoryDetailEvent, StoryDetailState> {
  final StoryRepository _storyRepository;

  StoryDetailBloc(this._storyRepository) : super(_Initial()) {
    on<StoryDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
