part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.data1({
    required String name,
  }) = _Data1;
  const factory ProfileState.data2({
    required String name,
  }) = _Data2;
}

// abstract class ProfileState {
//   const ProfileState();
// }

// class LoadedProfielState extends ProfileState {
//   final String name;

//   const LoadedProfielState({
//     required this.name,
//   });
// }

// class Loaded2ProfielState extends ProfileState {
//   final String name;

//   const Loaded2ProfielState({
//     required this.name,
//   });
// }

// class Loaded3ProfielState extends ProfileState {
//   final String name;

//   const Loaded3ProfielState({
//     required this.name,
//   });
// }