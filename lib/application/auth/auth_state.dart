part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  /// Initial [AuthBloc] state during application startup
  const factory AuthState.initial() = Initial;

  /// [AuthBloc] state that store authorizated [User] data
  const factory AuthState.authenticated(User user) = Authenticated;

  /// [AuthBloc] state that indicates [User] is not authorized
  const factory AuthState.unauthenticated() = Unauthenticated;
}
