import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/facade/global/global_entities.dart';
import 'package:recipe_service/domain/facade/global/global_facade.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

@injectable
class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  final GlobalFacade facade;

  GlobalBloc(this.facade) : super(const GlobalState.initial()) {
    on<_Started>(_onStartedEvent);

    add(const GlobalEvent.started());
  }

  FutureOr<void> _onStartedEvent(_Started event, Emitter<GlobalState> emit) async {
    await Future.delayed(const Duration(seconds: 4), () async {
      final profile = await facade.getProfile();
      final profilePosts = await facade.getProfilePosts();

      emit(GlobalState.data(
        profile: profile,
        profilePosts: profilePosts,
      ));
    });
  }
}
