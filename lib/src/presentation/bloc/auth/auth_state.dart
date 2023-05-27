part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  final String? message;

  const AuthState({
    this.message,
  });

  @override
  List<Object> get props => [];
}

class InitialAuthState extends AuthState {
  const InitialAuthState({
    super.message,
  });
}

class UnauthorizedAuthState extends AuthState {
  const UnauthorizedAuthState({
    super.message,
  });
}

class AuthorizedAuthState extends AuthState {
  final String session;

  const AuthorizedAuthState({
    super.message,
    required this.session,
  });

  @override
  List<Object> get props => [session];
}
