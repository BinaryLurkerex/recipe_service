import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    emit(event.value);
  }
}
