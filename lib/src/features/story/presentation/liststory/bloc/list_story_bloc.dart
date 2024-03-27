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

  final listStories = <ListStoryResponse>[];
  final size = 20;
  int page = 1;
  bool hasMore = true;

  ListStoryBloc(this._storyRepository) : super(const ListStoryInitial()) {
    on<ListStoryEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () => null,
        logout: (value) async {
          prefs.removeToken();
          emit(const ListStoryState.logout());
        },
        onRefresh: (_) async {
          listStories.clear();
          page = 1;

          add(const _OnGetListStory());
        },
        getListStory: (_) async {
          if (page == 1) {
            emit(const ListStoryState.loading());
          }

          final token = await prefs.getToken;
          final result = await _storyRepository.getAllStories(
            token: token,
            location: 0,
            page: page,
            size: size,
          );

          result.fold(
            (failure) {
              final errorResponse = failure.object as GetStoriesResponse?;

              emit(ListStoryState.error(
                message: errorResponse?.message ?? failure.message ?? '',
              ));
            },
            (success) {
              if ((success.listStory?.length ?? 0) < size) {
                hasMore = false;
              } else {
                page = page + 1;
              }

              listStories.addAll(success.listStory ?? []);

              final sortListDesc = listStories.map((e) => e).toList()
                ..sort((a, b) => b.createdAt?.compareTo(a.createdAt!) ?? 0);

              if (sortListDesc.isEmpty == true) {
                hasMore = false;
                emit(const ListStoryState.empty());
              } else {
                emit(ListStoryState.success(response: sortListDesc));
              }
            },
          );
        },
      );
    });
  }
}
