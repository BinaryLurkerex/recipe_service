import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/entities/recipe.dart';

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
}

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.loading()) {
    on<LoadHomeEvent>(_onLoadEvent);
  }

  FutureOr<void> _onLoadEvent(LoadHomeEvent event, Emitter<HomeState> emit) {
    emit(HomeState.data(
      currentRecipe: 0,
      recipes: localRecipes,
      isLastLoaded: false,
    ));
  }
}
