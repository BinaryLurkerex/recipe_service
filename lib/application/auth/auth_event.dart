part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  /// [AuthBloc] event to checks [User] authorization
  const factory AuthEvent.authCheck() = AuthCheckEvent;

  /// [AuthBloc] [User] signing out event
  const factory AuthEvent.signOut() = SignOutEvent;
}
