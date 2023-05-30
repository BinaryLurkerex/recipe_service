import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/domain/auth/auth_facade.dart';
import 'package:recipe/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckEvent>(_onAuthCheckEvent);
    on<SignOutEvent>(_onSignOutEvent);

    if (kDebugMode) {
      // add(const AuthEvent.signOut());
      add(const AuthEvent.authCheck());
      print(state.mapOrNull(
        authenticated: (_) => 'Authenticated',
        unauthenticated: (_) => 'Unauthenticated',
      ));
    }
  }

  FutureOr<void> _onAuthCheckEvent(AuthCheckEvent event, Emitter<AuthState> emit) async {
    final userOption = await _authFacade.getSignedInUser();
    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (user) {
        if (user == null) {
          return const AuthState.unauthenticated();
        }

        return AuthState.authenticated(user);
      },
    ));

    if (kDebugMode) {
      print(state);
    }
  }

  FutureOr<void> _onSignOutEvent(SignOutEvent event, Emitter<AuthState> emit) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
