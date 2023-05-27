part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class CheckAuthEvent extends AuthEvent {
  const CheckAuthEvent();
}

class LoginAuthEvent extends AuthEvent {
  final String username;
  final String password;

  const LoginAuthEvent({
    required this.username,
    required this.password,
  });

  @override
  List<Object> get props => [username, password];
}

class SignupAuthEvent extends AuthEvent {
  final String email;
  final String username;
  final String password;

  const SignupAuthEvent({
    required this.email,
    required this.username,
    required this.password,
  });

  @override
  List<Object> get props => [email, username, password];
}
