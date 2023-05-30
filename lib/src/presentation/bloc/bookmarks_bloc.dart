import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/entities/recipe.dart';

part 'bookmarks_bloc.freezed.dart';

@freezed
abstract class BookmarksState with _$BookmarksState {
  const factory BookmarksState.loading() = LoadingBookmarksState;
  const factory BookmarksState.data({
    required List<RecipeDEPRECATED> recipes,
    required bool isLastLoaded,
  }) = DataBookmarksState;
}

@freezed
abstract class BookmarksEvent with _$BookmarksEvent {
  const factory BookmarksEvent.load() = LoadBookmarksEvent;
  const factory BookmarksEvent.add({
    required RecipeDEPRECATED recipe,
  }) = AddBookmarksEvent;
  const factory BookmarksEvent.del({
    required String id,
  }) = DelBookmarksEvent;
}

@singleton
class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(const BookmarksState.loading()) {
    on<LoadBookmarksEvent>(_onLoadEvent);
    on<AddBookmarksEvent>(_onAddEvent);
    on<DelBookmarksEvent>(_onDelEvent);
  }

  //! DEPRECATED
  final List<RecipeDEPRECATED> _favRecipes = [];

  FutureOr<void> _onLoadEvent(LoadBookmarksEvent event, Emitter<BookmarksState> emit) async {
    emit(const BookmarksState.loading());

    state.map(
      loading: (state) {
        emit(BookmarksState.data(
          recipes: _favRecipes,
          isLastLoaded: true,
        ));
      },
      data: (state) {
        if (!state.isLastLoaded) {
          //TODO: ADD CHECK WITH SERVER VALUES
          // if (state.recipes != _favRecipes) {
          //   emit(
          //     DataBookmarksState(
          //       recipes: _favRecipes,
          //       isLastLoaded: true,
          //     ),
          //   );
          // }
        } else {
          emit(state.copyWith(
            recipes: state.recipes, // + [nextRecipes],
          ));
        }
      },
    );
  }

  FutureOr<void> _onAddEvent(AddBookmarksEvent event, Emitter<BookmarksState> emit) {
    emit(
      const LoadingBookmarksState(),
    );

    //TODO: IMPL SERVER METHOD
    if (_favRecipes.map((e) => e.id).toList().contains(event.recipe.id)) {
      return null;
    }

    _favRecipes.add(event.recipe);

    emit(
      DataBookmarksState(
        recipes: _favRecipes,
        isLastLoaded: true,
      ),
    );
  }

  FutureOr<void> _onDelEvent(DelBookmarksEvent event, Emitter<BookmarksState> emit) {
    emit(
      const LoadingBookmarksState(),
    );

    _favRecipes.removeWhere(
      (element) => element.id == event.id,
    );

    emit(
      DataBookmarksState(
        recipes: _favRecipes,
        isLastLoaded: true,
      ),
    );
  }
}
