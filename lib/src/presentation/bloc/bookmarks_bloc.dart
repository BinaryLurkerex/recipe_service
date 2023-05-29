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
}

@singleton
class BookmarksBloc extends Bloc<BookmarksEvent, BookmarksState> {
  BookmarksBloc() : super(const BookmarksState.loading()) {
    on<LoadBookmarksEvent>(_onLoadEvent);
  }

  FutureOr<void> _onLoadEvent(LoadBookmarksEvent event, Emitter<BookmarksState> emit) async {
    const Recipe fake = Recipe(
      name: 'fake-name',
      image: 'fake-name',
      ownerID: 'fake-id',
    );

    emit(const BookmarksState.loading());

    await Future.delayed(const Duration(seconds: 1), () {
      state.map(
        loading: (state) {
          emit(const BookmarksState.data(
            recipes: [fake],
            isLastLoaded: false,
          ));
        },
        data: (state) {
          emit(state.copyWith(
            recipes: state.recipes + [fake],
          ));
        },
      );
    });
  }
}
