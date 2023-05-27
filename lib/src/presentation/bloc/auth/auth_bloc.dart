import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const InitialAuthState()) {
    on<CheckAuthEvent>(_onCheckAuthEvent);
    on<LoginAuthEvent>(_onLoginAuthEvent);
    on<SignupAuthEvent>(_onSignupAuthEvent);

    add(const CheckAuthEvent());
  }

  FutureOr<void> _onCheckAuthEvent(
    CheckAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthorizedAuthState(
      session: 'fake-session-key',
    ));
  }

  FutureOr<void> _onLoginAuthEvent(
    LoginAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthorizedAuthState(
      session: 'fake-session-key',
    ));
  }

  FutureOr<void> _onSignupAuthEvent(
    SignupAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const AuthorizedAuthState(
      session: 'fake-session-key',
    ));
  }
}
