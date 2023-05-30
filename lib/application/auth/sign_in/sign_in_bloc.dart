import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/application/auth/auth_bloc.dart';
import 'package:recipe/domain/auth/auth_facade.dart';
import 'package:recipe/domain/auth/auth_failure.dart';
import 'package:recipe/domain/auth/value_objects.dart';
import 'package:recipe/infrastucture/core/injector.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthFacade _authFacade;

  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<EmailChangeEvent>(_onEmailChangeEvent);
    on<PasswordChangeEvent>(_onPasswordChangeEvent);
    on<SingUpWithEmailAndPasswordEnent>(_onSingUpWithEmailAndPasswordEnent);
    on<SignInWithEmailAndPasswordEvent>(_onSignInWithEmailAndPasswordEvent);
    on<SignInWithGoogleEvent>(_onSignInWithGoogleEvent);
  }

  FutureOr<void> _onEmailChangeEvent(EmailChangeEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(
      emailAddress: EmailAddress(event.email),
      authFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onPasswordChangeEvent(PasswordChangeEvent event, Emitter<SignInState> emit) {
    emit(state.copyWith(
      password: Password(event.password),
      authFailureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSingUpWithEmailAndPasswordEnent(SingUpWithEmailAndPasswordEnent event, Emitter<SignInState> emit) async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );

    if (kDebugMode) {
      final AuthBloc authBloc = getIt<AuthBloc>();
      authBloc.add(const AuthEvent.authCheck());
    }
  }

  FutureOr<void> _onSignInWithEmailAndPasswordEvent(SignInWithEmailAndPasswordEvent event, Emitter<SignInState> emit) async {
    await _performActionOnAuthFacadeWithEmailAndPassword(
      _authFacade.signInWithEmailAndPassword,
    );

    if (kDebugMode) {
      final AuthBloc authBloc = getIt<AuthBloc>();
      authBloc.add(const AuthEvent.authCheck());
    }
  }

  FutureOr<void> _onSignInWithGoogleEvent(SignInWithGoogleEvent event, Emitter<SignInState> emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authFailureOrSuccessOption: none(),
    ));

    final failureOrSuccess = await _authFacade.signInWithGoogle();
    emit(state.copyWith(
      isSubmitting: false,
      authFailureOrSuccessOption: some(failureOrSuccess),
    ));
  }

  Future<void> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) call,
  ) async {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await call(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      failureOrSuccess = const Left(
        AuthFailure.invalidEmailOrPassword(),
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
