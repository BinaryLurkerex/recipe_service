import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const InitialAuthState()) {
    on<CheckAuthEvent>(
      _onCheckAuthEvent,
      transformer: droppable(),
    );
    on<LoginAuthEvent>(
      _onLoginAuthEvent,
      transformer: droppable(),
    );
    on<SignupAuthEvent>(
      _onSignupAuthEvent,
      transformer: droppable(),
    );
  }

  FutureOr<void> _onCheckAuthEvent(
    CheckAuthEvent event,
    Emitter<AuthState> emit,
  ) {
    emit(const UnauthorizedAuthState());
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
