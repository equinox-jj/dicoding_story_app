import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_story_app/core/common/utils/ext/date_time_ext.dart';
import 'package:dicoding_story_app/core/config/route_name.dart';
import 'package:dicoding_story_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/list_story_bloc.dart';

class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () async {
          context.pushNamed(RouteName.ADD_STORY);
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
                const PopupMenuItem(value: 0, child: Text('Logout')),
              ];
            },
          ),
        ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {},
        child: BlocConsumer<ListStoryBloc, ListStoryState>(
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
                return Center(
                  child: Text(l?.emptyStoryList ?? ''),
                );
              case ListStoryLoading _:
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              case ListStorySuccess value:
                final items = value.response;

                return CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      flexibleSpace: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Sorting item by datetime',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Center(
                            child: IconButton.filled(
                              onPressed: () async {
                                await showAdaptiveDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog.adaptive(
                                      title: const Text('Sorting by :'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          RadioListTile.adaptive(
                                            value: '0',
                                            groupValue: 'sortby',
                                            onChanged: (value) {
                                              context.read<ListStoryBloc>().add(
                                                    ListStoryEvent.sortByDateTime(
                                                      int.parse(value ?? ''),
                                                    ),
                                                  );
                                            },
                                            title: const Text(
                                              'Datetime Asc',
                                              style: TextStyle(fontWeight: FontWeight.w500),
                                            ),
                                            secondary: const Icon(
                                                Icons.arrow_upward_rounded),
                                            dense: true,
                                            visualDensity: VisualDensity.compact,
                                          ),
                                          RadioListTile.adaptive(
                                            value: '1',
                                            groupValue: 'sortby',
                                            onChanged: (value) {
                                              context.read<ListStoryBloc>().add(
                                                    ListStoryEvent.sortByDateTime(int.parse(value ?? '')),
                                                  );
                                            },
                                            title: const Text(
                                              'Datetime Desc',
                                              style: TextStyle(fontWeight: FontWeight.w500),
                                            ),
                                            secondary: const Icon(
                                              Icons.arrow_downward_rounded,
                                            ),
                                            dense: true,
                                            visualDensity: VisualDensity.compact,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: const Icon(Icons.sort_rounded),
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                ),
                                visualDensity: VisualDensity.compact,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SliverList.builder(
                      itemCount: items?.length,
                      itemBuilder: (context, index) {
                        final item = items?[index];

                        return Hero(
                          tag: item?.photoUrl ?? '',
                          child: Card.filled(
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
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                item?.name ?? '',
                                                textAlign: TextAlign.start,
                                                maxLines: 1,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17.0,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 0,
                                              child: Text(
                                                item?.createdAt?.formatTime() ?? '',
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
                                          maxLines: 3,
                                          style: const TextStyle(
                                            fontSize: 14.0,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
