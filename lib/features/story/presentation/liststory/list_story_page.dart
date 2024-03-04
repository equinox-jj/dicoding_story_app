import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_story_app/core/common/utils/ext/date_time_ext.dart';
import 'package:dicoding_story_app/core/config/route_name.dart';
import 'package:dicoding_story_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:go_router/go_router.dart';

import 'bloc/list_story_bloc.dart';

class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.note_add_rounded),
            label: 'Add Story',
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.sort_rounded),
            label: 'Sort By',
            onTap: () {},
          ),
        ],
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
                const PopupMenuItem(value: 0, child: Text('Logout')),
              ];
            },
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocConsumer<ListStoryBloc, ListStoryState>(
              listener: (context, state) {
                switch (state) {
                  case ListStoryError value:
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(value.message ?? ''),
                        duration: const Duration(seconds: 3),
                        showCloseIcon: true,
                      ),
                    );
                    break;
                  case ListStoryLogout _:
                    context.goNamed(RouteName.LOGIN);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('You has logged out'),
                        duration: Duration(seconds: 3),
                        showCloseIcon: true,
                      ),
                    );
                    break;
                  default:
                }
              },
              builder: (context, state) {
                switch (state) {
                  case ListStoryEmpty _:
                    return Expanded(
                      child: Center(
                        child: Text(l?.emptyStoryList ?? ''),
                      ),
                    );
                  case ListStoryLoading _:
                    return const Expanded(
                      child: Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  case ListStorySuccess value:
                    final items = value.response;

                    return Expanded(
                      child: ListView.builder(
                        itemCount: items?.length,
                        itemBuilder: (context, index) {
                          final item = items?[index];

                          return Card.filled(
                            clipBehavior: Clip.hardEdge,
                            child: InkWell(
                              onTap: () async {
                                await context.pushNamed(
                                  RouteName.DETAIL_STORY,
                                  extra: item,
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl: item?.photoUrl ?? '',
                                    width: MediaQuery.sizeOf(context).width,
                                    height: 200.0,
                                    fit: BoxFit.fill,
                                    placeholder: (_, __) => Image.asset(
                                      'assets/images/placeholder.png',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 200.0,
                                      fit: BoxFit.fill,
                                    ),
                                    errorWidget: (_, __, ___) => Image.asset(
                                      'assets/images/error.png',
                                      width: MediaQuery.sizeOf(context).width,
                                      height: 200.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 8.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                item?.name ?? '',
                                                textAlign: TextAlign.start,
                                                maxLines: 1,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17.0,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 0,
                                              child: Text(
                                                item?.createdAt?.formatTime() ??
                                                    '',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          item?.createdAt?.formatDate() ?? '',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 11.0,
                                          ),
                                        ),
                                        const SizedBox(height: 10.0),
                                        Text(
                                          item?.description ?? '',
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  default:
                    return const SizedBox.shrink();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
