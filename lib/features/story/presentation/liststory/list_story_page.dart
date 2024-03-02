import 'package:dicoding_story_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/list_story_bloc.dart';

class ListStoryPage extends StatelessWidget {
  const ListStoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l?.titleAppBar ?? ''),
        actions: [
          IconButton.outlined(
            onPressed: () {
              context.read<ListStoryBloc>().add(const ListStoryEvent.logout());
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocConsumer<ListStoryBloc, ListStoryState>(
            listenWhen: (previous, current) {
              if (previous is ListStoryError && current is ListStoryError) {
                return previous.message != current.message;
              }

              return previous != current;
            },
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
                default:
              }
            },
            builder: (context, state) {
              switch (state) {
                case ListStoryEmpty _:
                  return const Center(
                    child: Text('You dont have any story to tell.'),
                  );
                case ListStoryLoading _:
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                case ListStoryError _:
                  return const SizedBox();
                case ListStorySuccess value:
                  final items = value.response;

                  return Expanded(
                    child: ListView.builder(
                      itemCount: items?.length,
                      itemBuilder: (context, index) {
                        final item = items?[index];

                        return ListTile(
                          subtitle: Text(item?.description ?? ''),
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
    );
  }
}
