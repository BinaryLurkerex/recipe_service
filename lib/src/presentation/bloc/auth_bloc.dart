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
  AuthBloc() : super(const AuthState.initial()) {
    on<RefreshAuthEvent>(_onRefreshEvent);
    on<SignupAuthEvent>(_onSignupEvent);
    on<LoginAuthEvent>(_onloginEvent);
  }

  FutureOr<void> _onRefreshEvent(RefreshAuthEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.unauthorized());
  }

  FutureOr<void> _onSignupEvent(SignupAuthEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.authorized(
      session: 'fake-session-key',
    ));
  }

  FutureOr<void> _onloginEvent(LoginAuthEvent event, Emitter<AuthState> emit) {
    emit(const AuthState.authorized(
      session: 'fake-session-key',
    ));
  }
}
