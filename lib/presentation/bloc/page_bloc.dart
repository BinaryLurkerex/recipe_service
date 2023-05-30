import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/infrastucture/core/injector.dart';
import 'package:recipe/presentation/bloc/bookmarks_bloc.dart';
import 'package:recipe/presentation/bloc/home_bloc.dart';
import 'package:recipe/presentation/bloc/profile_bloc.dart';

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
        getIt<HomeBloc>().add(
          const HomeEvent.load(),
        );
        emit(event.value);
        break;

      case 1:
        getIt<BookmarksBloc>().add(
          const BookmarksEvent.load(),
        );
        emit(event.value);
        break;

      case 2:
        getIt<ProfileBloc>().add(
          const ProfileEvent.refresh(),
        );
        emit(event.value);
        break;
    }
  }
}
