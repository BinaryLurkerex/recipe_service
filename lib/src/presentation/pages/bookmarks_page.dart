import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/bookmarks/bookmarks_bloc.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_list_item.dart';

class BookmarksPage extends StatelessWidget {
  late final BookmarksBloc bookmarksBloc;

  BookmarksPage({super.key}) {
    bookmarksBloc = services<BookmarksBloc>();
  }

  static const route = '/bookmarks';

  @override
  Widget build(BuildContext context) {
    bookmarksBloc.add(const LoadFirstBookmarksEvent());

    final ScrollController scrollController = ScrollController();

    void onScrollBookmarks() {
      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      if (maxScroll == currentScroll) {
        bookmarksBloc.add(const LoadMoreBookmarksEvent());
      }
    }

    scrollController.addListener(onScrollBookmarks);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(92.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
          ),
          child: const Text(
            'Bookmarks',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: BlocConsumer<BookmarksBloc, BookmarksState>(
          bloc: bookmarksBloc,
          listener: (context, state) {
            if (state.message != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    state.message!,
                  ),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is ListBookmarksState) {
              if (state.recipes.isEmpty) {
                return const Center(
                  child: Text(
                    'There`s no bookmarks',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                );
              }

              return ListView.builder(
                controller: scrollController,
                itemCount: state.recipes.length + 1,
                itemBuilder: (context, index) {
                  if (index == state.recipes.length) {
                    return Container(
                      height: 92.0,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(
                        strokeWidth: 1.0,
                      ),
                    );
                  }

                  return Dismissible(
                    key: Key(index.toString()),
                    onDismissed: (direction) {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                        bottom: 16.0,
                      ),
                      child: RecipeListItem(
                        recipe: state.recipes.elementAt(index),
                      ),
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 1.0,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}
