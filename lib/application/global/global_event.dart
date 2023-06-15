part of 'global_bloc.dart';

@freezed
class GlobalEvent with _$GlobalEvent {
  const factory GlobalEvent.started() = _Started;
}