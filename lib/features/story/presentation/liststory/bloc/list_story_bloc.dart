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
      switch (event) {
        case _OnGetListStory _:
          final token = await prefs.getToken;

          emit(const ListStoryState.loading());

          final result = await _storyRepository.getAllStories(
            token: token,
            location: 0, // 1 With location-0 without location
            page: 1,
            size: 20,
          );

          result.fold(
            (left) {
              final errorResponse = left.object as GetStoriesResponse;

              emit(ListStoryState.error(message: errorResponse.message));
            },
            (right) {
              final listStory = right.listStory;

              if (listStory?.isEmpty == true) {
                emit(const ListStoryState.empty());
              } else {
                emit(ListStoryState.success(response: listStory));
              }
            },
          );
          break;
        case _OnLogoutClicked _:
          prefs.removeToken();
          emit(const ListStoryState.logout());
          break;
        case _OnSortByDateTimeClicked value:
          final token = await prefs.getToken;

          emit(const ListStoryState.loading());

          final result = await _storyRepository.getAllStories(
            token: token,
            location: 0,
            page: 1,
            size: 20,
          );

          result.fold(
            (left) {
              final errorResponse = left.object as GetStoriesResponse;

              emit(ListStoryState.error(message: errorResponse.message));
            },
            (right) {
              final listStory = right.listStory;
              final sortingListDesc = listStory?.map((e) => e).toList()?..sort((a, b) => b.createdAt?.compareTo(a.createdAt!) ?? 0);
              final sortingListAsc = listStory?.map((e) => e).toList()?..sort((a, b) => a.createdAt?.compareTo(b.createdAt!) ?? 0);

              if (value.value == 0) {
                if (sortingListAsc?.isEmpty == true) {
                  emit(const ListStoryState.empty());
                } else {
                  emit(ListStoryState.success(response: sortingListAsc));
                }
              } else if (value.value == 1) {
                if (sortingListDesc?.isEmpty == true) {
                  emit(const ListStoryState.empty());
                } else {
                  emit(ListStoryState.success(response: sortingListDesc));
                }
              }
            },
          );

          break;
        default:
      }
    });
  }
}
