part of 'bookmarks_bloc.dart';

abstract class BookmarksState extends Equatable {
  final String? message;

  const BookmarksState({
    this.message,
  });

  @override
  List<Object> get props => [];
}

class LoadingBookmarksState extends BookmarksState {
  const LoadingBookmarksState({
    super.message,
  });
}

class ListBookmarksState extends BookmarksState {
  final List<Recipe> recipes;
  final bool isLast;

  const ListBookmarksState({
    required this.recipes,
    required this.isLast,
    super.message,
  });

  ListBookmarksState copyWith({List<Recipe>? recipes, bool? isLast}) {
    return ListBookmarksState(
      recipes: recipes ?? this.recipes,
      isLast: isLast ?? this.isLast,
    );
  }
}
