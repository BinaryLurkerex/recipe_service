part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChange(String email) = EmailChangeEvent;
  const factory SignInEvent.passwordChange(String password) = PasswordChangeEvent;
  const factory SignInEvent.singUpWithEmailAndPassword() = SingUpWithEmailAndPasswordEnent;
  const factory SignInEvent.signInWithEmailAndPassword() = SignInWithEmailAndPasswordEvent;
  const factory SignInEvent.signInWithGoogle() = SignInWithGoogleEvent;
}
