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
    required List<Recipe> recipes,
    required bool isLastLoaded,
  }) = DataBookmarksState;
}

@freezed
abstract class BookmarksEvent with _$BookmarksEvent {
  const factory BookmarksEvent.load() = LoadBookmarksEvent;
  const factory BookmarksEvent.add({
    required Recipe recipe,
  }) = AddBookmarksEvent;
}

@singleton
class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(const BookmarksState.loading()) {
    on<LoadBookmarksEvent>(_onLoadEvent);
    on<AddBookmarksEvent>(_onAddEvent);
  }

  //! DEPRECATED
  //TODO: NEEDS TO RETRIVE FROM SERVER
  List<Recipe> _favRecipes = [];

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
          //TODO: ADD STREAM LOADING FROM SERVER
          emit(state.copyWith(
            recipes: state.recipes, // + [nextRecipes],
          ));
        }
      },
    );
  }

  FutureOr<void> _onAddEvent(event, Emitter<BookmarksState> emit) {
    //TODO: IMPL SERVER METHOD
    _favRecipes.add(event.recipe);
  }
}
