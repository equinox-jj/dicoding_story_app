import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../main.dart';
import '../../../../core/common/widgets/story_item_widget.dart';
import '../../../../core/config/route_name.dart';
import '../../../../core/helper/helper_function.dart';
import '../../../../core/helper/shared_preferences_helper.dart';
import '../../../../di/injector.dart';
import 'bloc/list_story_bloc.dart';

class ListStoryPage extends StatefulWidget {
  const ListStoryPage({super.key});

  @override
  State<ListStoryPage> createState() => _ListStoryPageState();
}

class _ListStoryPageState extends State<ListStoryPage> {
  final prefs = sl<SharedPreferencesHelper>();
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final listStory = context.read<ListStoryBloc>();

    listStory.add(const ListStoryEvent.getListStory());

    scrollController.addListener(() {
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
        if (listStory.hasMore) {
          listStory.add(const ListStoryEvent.getListStory());
        }
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () async {
          await context
              .pushNamed<bool>(RouteName.ADD_STORY)
              .then((value) async => value == true
                  ? context.read<ListStoryBloc>().add(
                        const ListStoryEvent.getListStory(),
                      )
                  : null);
        },
        child: const Icon(Icons.add_rounded),
      ),
      appBar: AppBar(
        title: Text(l?.titleAppBar ?? ''),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 0:
                  return context
                      .read<ListStoryBloc>()
                      .add(const ListStoryEvent.logout());
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: 0, child: Text(l?.logOut ?? '')),
              ];
            },
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          context.read<ListStoryBloc>().add(const ListStoryEvent.onRefresh());
        },
        child: BlocConsumer<ListStoryBloc, ListStoryState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () => null,
              error: (value) => HelperFunction.snackBar(
                context: context,
                message: value.message,
              ),
              logout: (_) {
                context.goNamed(RouteName.LOGIN);
                HelperFunction.snackBar(
                  context: context,
                  message: l?.hasLoggedOut,
                );
              },
            );
          },
          builder: (context, state) {
            final listStory = context.read<ListStoryBloc>();

            return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              loading: (_) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              success: (value) => ListView.builder(
                physics: const ClampingScrollPhysics(),
                controller: scrollController,
                itemCount: (value.response?.length ?? 0) + (listStory.hasMore ? 1 : 0),
                itemBuilder: (context, index) {
                  if (index == value.response?.length && listStory.hasMore) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }

                  final item = value.response?[index];

                  return StoryItemWidget(
                    imageUrl: item?.photoUrl,
                    username: item?.name,
                    date: item?.createdAt,
                    time: item?.createdAt,
                    description: item?.description,
                    heroTag: item?.photoUrl,
                    imageHeight: 200.0,
                    imageWidth: w,
                    onTap: () async {
                      await context.pushNamed(
                        RouteName.DETAIL_STORY,
                        extra: item,
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
