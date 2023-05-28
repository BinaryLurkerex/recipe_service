part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  final String? message;

  const ProfileState({
    this.message,
  });

  @override
  List<Object> get props => [];
}

class LoadingProfileState extends ProfileState {
  const LoadingProfileState({
    super.message,
  });
}

class UserProfileState extends ProfileState {
  final User user;

  const UserProfileState({
    super.message,
    required this.user,
  });

  @override
  List<Object> get props => [user];
}
