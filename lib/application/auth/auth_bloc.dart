import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_service/domain/facade/auth/auth_facade.dart';
import 'package:recipe_service/domain/facade/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckEvent>(_onAuthCheckEvent);
    on<SignOutEvent>(_onSignOutEvent);
  }

  FutureOr<void> _onAuthCheckEvent(AuthCheckEvent event, Emitter<AuthState> emit) async {
    final Option<User?> userOption = await _authFacade.getSignedInUser();
    final AuthState authState = userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) => user != null ? AuthState.authenticated(user) : const AuthState.unauthenticated(),
    );

    emit(authState);
  }

  FutureOr<void> _onSignOutEvent(SignOutEvent event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
