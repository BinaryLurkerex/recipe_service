import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe/src/domain/entities/recipe.dart';

part 'bookmarks_event.dart';
part 'bookmarks_state.dart';

class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(const LoadingBookmarksState()) {
    on<LoadFirstBookmarksEvent>(_onLoadFirstBookmarksEvent);
    on<LoadMoreBookmarksEvent>(_onLoadMoreBookmarksEvent);
  }

  FutureOr<void> _onLoadFirstBookmarksEvent(
    LoadFirstBookmarksEvent event,
    Emitter<BookmarksState> emit,
  ) {
    emit(const LoadingBookmarksState());

    //TODO: implement server loadin`
    List<Recipe> newItems = [
      Recipe(
        name: 'fake-name',
        image: 'fake-name',
        ownerID: 'fake-id',
      ),
      Recipe(
        name: 'fake-name',
        image: 'fake-name',
        ownerID: 'fake-id',
      ),
    ];

    emit(ListBookmarksState(
      recipes: newItems,
      isLast: false,
    ));
  }

  FutureOr<void> _onLoadMoreBookmarksEvent(
    LoadMoreBookmarksEvent event,
    Emitter<BookmarksState> emit,
  ) {
    //TODO: implement server loadin`
    List<Recipe> newItems = [
      Recipe(
        name: 'fake-name',
        image: 'fake-name',
        ownerID: 'fake-id',
      ),
      Recipe(
        name: 'fake-name',
        image: 'fake-name',
        ownerID: 'fake-id',
      ),
    ];

    if (state is ListBookmarksState) {
      emit(ListBookmarksState(
        recipes: (state as ListBookmarksState).recipes + newItems,
        isLast: false,
      ));
    } else {
      emit(ListBookmarksState(
        recipes: newItems,
        isLast: false,
      ));
    }
  }
}
