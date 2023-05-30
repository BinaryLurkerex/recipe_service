part of 'post_bloc.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    required String title,
  }) = _PostState;

  factory PostState.initial() => const PostState(
        title: '',
      );
}
