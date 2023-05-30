part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheck() = AuthCheckEvent;
  const factory AuthEvent.signOut() = SignOutEvent;
}
