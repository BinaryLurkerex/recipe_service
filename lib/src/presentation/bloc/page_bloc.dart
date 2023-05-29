import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/core/injector/injector.dart';
import 'package:recipe/src/presentation/bloc/bookmarks_bloc.dart';
import 'package:recipe/src/presentation/bloc/home_bloc.dart';
import 'package:recipe/src/presentation/bloc/profile_bloc.dart';

part 'page_bloc.freezed.dart';

@freezed
abstract class PageEvent with _$PageEvent {
  const factory PageEvent.open({
    required int value,
  }) = OpenPageEvent;
}

@singleton
class PageBloc extends Bloc<PageEvent, int> {
  PageBloc() : super(0) {
    on<OpenPageEvent>(_onOpenEvent);
  }

  FutureOr<void> _onOpenEvent(OpenPageEvent event, Emitter<int> emit) {
    if (event.value == state) {
      return null;
    }

    switch (event.value) {
      case 0:
        services<HomeBloc>().add(
          const HomeEvent.load(),
        );
        emit(event.value);
        break;

      case 1:
        services<BookmarksBloc>().add(
          const BookmarksEvent.load(),
        );
        emit(event.value);
        break;

      case 2:
        services<ProfileBloc>().add(
          const ProfileEvent.refresh(),
        );
        emit(event.value);
        break;
    }
  }
}
