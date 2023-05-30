part of 'post_bloc.dart';

@freezed
abstract class PostEvent with _$PostEvent {
  const factory PostEvent.titleChange() = TitleChangeEvent;
  const factory PostEvent.addImage() = AddImageEvent;
}
