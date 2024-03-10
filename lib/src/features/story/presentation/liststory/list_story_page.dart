import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../main.dart';
import '../../../../core/common/widgets/radio_button_widget.dart';
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

  @override
  void initState() {
    super.initState();
    loadListStory(context);
  }

  void loadListStory(BuildContext context) async {
    context
        .read<ListStoryBloc>()
        .add(ListStoryEvent.getListStory(index: await prefs.getSortBy));
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
                        ListStoryEvent.getListStory(
                          index: await prefs.getSortBy,
                        ),
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
          context.read<ListStoryBloc>().add(
                ListStoryEvent.getListStory(index: await prefs.getSortBy),
              );
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
            return state.maybeMap(
              orElse: () => const SizedBox.shrink(),
              loading: (_) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              success: (value) => CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    flexibleSpace:
                        BlocSelector<ListStoryBloc, ListStoryState, int>(
                      selector: (state) {
                        return state.maybeMap(
                          orElse: () => 1,
                          success: (value) => value.index,
                        );
                      },
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: RadioButtonWidget(
                                value: 0,
                                groupValue: value.index,
                                title: l?.sortByDate('Asc'),
                                secondary: const Icon(
                                  Icons.arrow_upward_rounded,
                                ),
                                onChanged: (value) async {
                                  context
                                      .read<ListStoryBloc>()
                                      .add(ListStoryEvent.getListStory(
                                        index: value ?? await prefs.getSortBy,
                                      ));
                                },
                              ),
                            ),
                            Expanded(
                              child: RadioButtonWidget(
                                value: 1,
                                groupValue: value.index,
                                title: l?.sortByDate('Desc'),
                                secondary: const Icon(
                                  Icons.arrow_downward_rounded,
                                ),
                                onChanged: (value) async {
                                  context
                                      .read<ListStoryBloc>()
                                      .add(ListStoryEvent.getListStory(
                                        index: value ?? await prefs.getSortBy,
                                      ));
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SliverList.builder(
                    itemCount: value.response?.length,
                    itemBuilder: (context, index) {
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
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
