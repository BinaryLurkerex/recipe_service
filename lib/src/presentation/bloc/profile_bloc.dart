// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/entities/user.dart';

part 'profile_bloc.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = LoadingProfileState;
  const factory ProfileState.user({
    required User user,
  }) = UserProfileState;
}

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.refresh() = RefreshProfileEvent;
}

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState.loading()) {
    on<RefreshProfileEvent>(_onRefreshEvent);
  }

  FutureOr<void> _onRefreshEvent(RefreshProfileEvent event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());

    await Future.delayed(const Duration(seconds: 1));
    emit(const ProfileState.user(
      user: User(
        id: 'fake-id',
        name: 'John Doe',
      ),
    ));
  }
}
