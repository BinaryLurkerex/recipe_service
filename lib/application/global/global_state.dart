part of 'global_bloc.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.initial() = _Loading;
  const factory GlobalState.data({
    required Profile profile,
    required KtList<Post> profilePosts,
  }) = _Data;
}
