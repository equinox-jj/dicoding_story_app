import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helper/shared_preferences_helper.dart';
import '../../../../../di/injector.dart';
import '../../../data/datasource/remote/model/getstories/get_stories_response.dart';
import '../../../data/datasource/remote/model/getstories/list_story_response.dart';
import '../../../domain/repository/story_repository.dart';

part 'list_story_bloc.freezed.dart';
part 'list_story_event.dart';
part 'list_story_state.dart';

class ListStoryBloc extends Bloc<ListStoryEvent, ListStoryState> {
  final prefs = sl<SharedPreferencesHelper>();
  final StoryRepository _storyRepository;

  ListStoryBloc(this._storyRepository) : super(const ListStoryInitial()) {
    on<ListStoryEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () => null,
        logout: (value) async {
          prefs.removeToken();
          prefs.removeSortBy();
          emit(const ListStoryState.logout());
        },
        getListStory: (value) async {
          emit(const ListStoryState.loading());

          final token = await prefs.getToken;
          final result = await _storyRepository.getAllStories(
            token: token,
            location: 0,
            page: 1,
            size: 30,
          );

          result.fold(
            (failure) {
              final errorResponse = failure.object as GetStoriesResponse?;

              emit(ListStoryState.error(
                message: errorResponse?.message ?? failure.message ?? '',
              ));
            },
            (success) {
              final listStory = success.listStory;
              final sortListDesc = listStory?.map((e) => e).toList()
                ?..sort((a, b) => b.createdAt?.compareTo(a.createdAt!) ?? 0);
              final sortListAsc = listStory?.map((e) => e).toList()
                ?..sort((a, b) => a.createdAt?.compareTo(b.createdAt!) ?? 0);

              switch (value.index) {
                case 0:
                  prefs.setSortBy(value.index);
                  if (sortListAsc?.isEmpty == true) {
                    emit(const ListStoryState.empty());
                  } else {
                    emit(ListStoryState.success(
                      index: value.index,
                      response: sortListAsc,
                    ));
                  }
                  break;
                default:
                  prefs.setSortBy(value.index);
                  if (sortListDesc?.isEmpty == true) {
                    emit(const ListStoryState.empty());
                  } else {
                    emit(ListStoryState.success(
                      index: value.index,
                      response: sortListDesc,
                    ));
                  }
              }
            },
          );
        },
      );
    });
  }
}
