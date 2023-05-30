import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe/src/domain/auth/auth_facade.dart';
import 'package:recipe/src/domain/auth/auth_failure.dart';
import 'package:recipe/src/domain/auth/value_objects.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthFacade authFacade;

  SignInBloc(this.authFacade) : super(SignInState.initial()) {
    on<EmailChangeEvent>(_onEmailChangeEvent);
    on<PasswordChangeEvent>(_onPasswordChangeEvent);
    on<SingUpWithEmailAndPasswordEnent>(_onSingUpWithEmailAndPasswordEnent);
    on<SignInWithEmailAndPasswordEvent>(_onSignInWithEmailAndPasswordEvent);
    on<SignInWithGoogleEvent>(_onSignInWithGoogleEvent);
  }

  FutureOr<void> _onEmailChangeEvent(EmailChangeEvent event, Emitter<SignInState> emit) {}

  FutureOr<void> _onPasswordChangeEvent(PasswordChangeEvent event, Emitter<SignInState> emit) {}

  FutureOr<void> _onSingUpWithEmailAndPasswordEnent(SingUpWithEmailAndPasswordEnent event, Emitter<SignInState> emit) {}

  FutureOr<void> _onSignInWithEmailAndPasswordEvent(SignInWithEmailAndPasswordEvent event, Emitter<SignInState> emit) {}

  FutureOr<void> _onSignInWithGoogleEvent(SignInWithGoogleEvent event, Emitter<SignInState> emit) {}
}
