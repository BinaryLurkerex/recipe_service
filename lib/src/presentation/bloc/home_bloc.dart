import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/entities/recipe.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

part 'home_bloc.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingHomeState;
  const factory HomeState.data({
    required int currentRecipe,
    required List<Recipe> recipes,
    required bool isLastLoaded,
  }) = DataHomeState;
}

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.load() = LoadHomeEvent;
  const factory HomeEvent.next() = NextHomeEvent;
  const factory HomeEvent.prev() = PrevHomeEvent;
}

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.loading()) {
    on<LoadHomeEvent>(_onLoadEvent);
    on<NextHomeEvent>(_onNextEvent);
    on<PrevHomeEvent>(_onPrevEvent);
  }

  FutureOr<void> _onLoadEvent(LoadHomeEvent event, Emitter<HomeState> emit) {
    emit(HomeState.data(
      currentRecipe: 0,
      recipes: List.generate(
        20,
        (index) => Recipe(
          id: 'fake-id',
          owner: 'fake-owner',
          name: loremIpsum(words: 4),
          image: 'fake-image',
          desc: loremIpsum(paragraphs: 2, words: 60),
          favsCount: 6,
        ),
      ),
      isLastLoaded: false,
    ));
  }

  FutureOr<void> _onNextEvent(NextHomeEvent event, Emitter<HomeState> emit) {
    state.mapOrNull(data: (state) {
      if (state.currentRecipe < state.recipes.length) {
        emit(state.copyWith(
          currentRecipe: state.currentRecipe + 1,
        ));
      }
    });
  }

  FutureOr<void> _onPrevEvent(PrevHomeEvent event, Emitter<HomeState> emit) {
    state.mapOrNull(data: (state) {
      if (state.currentRecipe > 0) {
        emit(state.copyWith(
          currentRecipe: state.currentRecipe - 1,
        ));
      }
    });
  }
}
