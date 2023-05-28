import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/bookmarks_bloc.dart';
import 'package:recipe/src/presentation/widgets/app_header_bar.dart';
import 'package:recipe/src/presentation/widgets/app_nav_bar.dart';
import 'package:recipe/src/presentation/widgets/recipe_list_item.dart';

@RoutePage()
class BookmarksPage extends StatelessWidget {
  late final BookmarksBloc bookmarksBloc;

  BookmarksPage({super.key}) {
    bookmarksBloc = services<BookmarksBloc>();
    bookmarksBloc.add(const BookmarksEvent.load());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeaderBar(
        title: 'Bookmarks',
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: BlocBuilder<BookmarksBloc, BookmarksState>(
          bloc: bookmarksBloc,
          builder: (context, state) {
            return state.map(
              loading: (state) {
                return _BookmarksPageLoading();
              },
              data: (DataBookmarksState state) {
                return _BookmarksPageData(state);
              },
            );
          },
        ),
      ),
      bottomNavigationBar: const AppNavBar(),
    );
  }
}

class _BookmarksPageLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 1.0,
      ),
    );
  }
}

class _BookmarksPageData extends StatelessWidget {
  final DataBookmarksState state;

  const _BookmarksPageData(this.state);

  void onScrollBookmarks(ScrollController controller) {
    final maxScroll = controller.position.maxScrollExtent;
    final currentScroll = controller.position.pixels;
    if (maxScroll == currentScroll) {
      services<BookmarksBloc>().add(
        const BookmarksEvent.load(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    scrollController.addListener(
      () => onScrollBookmarks(scrollController),
    );

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
}
