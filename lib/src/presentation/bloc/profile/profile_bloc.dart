import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/entities/user.dart';

part 'profile_event.dart';
part 'profile_state.dart';

@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const LoadingProfileState()) {
    on<RefreshProfileEvent>(_onRefreshProfileEvent);
  }

  Future<void> _onRefreshProfileEvent(
    RefreshProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const LoadingProfileState());

    await Future.delayed(const Duration(seconds: 1));
    emit(const UserProfileState(
      user: User(
        id: 'fake-id',
        name: 'John Doe',
      ),
    ));
  }
}
