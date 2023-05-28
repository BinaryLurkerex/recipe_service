// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = InititalAuthState;
  const factory AuthState.unauthorized() = UnauthorizedAuthState;
  const factory AuthState.authorized({
    required String session,
  }) = AuthorizedAuthState;
}

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.refresh() = RefreshAuthEvent;
  const factory AuthEvent.signup({
    required String email,
    required String username,
    required String password,
  }) = SignupAuthEvent;
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = LoginAuthEvent;
}

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial());

  @override
  void onEvent(AuthEvent event) {
    event.map(
      refresh: _onRefreshEvent,
      signup: _onSignupEvent,
      login: _onloginEvent,
    );

    super.onEvent(event);
  }

  FutureOr<void> _onRefreshEvent(RefreshAuthEvent state) {
    emit(const AuthState.unauthorized());
  }

  FutureOr<void> _onSignupEvent(SignupAuthEvent state) {
    emit(const AuthState.authorized(
      session: 'fake-session-key',
    ));
  }

  FutureOr<void> _onloginEvent(LoginAuthEvent state) {
    emit(const AuthState.authorized(
      session: 'fake-session-key',
    ));
  }
}
