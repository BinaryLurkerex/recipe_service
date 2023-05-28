part of 'bookmarks_bloc.dart';

abstract class BookmarksEvent extends Equatable {
  const BookmarksEvent();

  @override
  List<Object> get props => [];
}

class LoadFirstBookmarksEvent extends BookmarksEvent {
  const LoadFirstBookmarksEvent();
}

class LoadMoreBookmarksEvent extends BookmarksEvent {
  const LoadMoreBookmarksEvent();
}
