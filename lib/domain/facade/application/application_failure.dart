import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_failure.freezed.dart';

@freezed
abstract class ApplicationFailure with _$ApplicationFailure {
  const factory ApplicationFailure.serverError() = ServerError;
  const factory ApplicationFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ApplicationFailure.missingParametrs() = MissingParametrs;
  const factory ApplicationFailure.missingPost() = MissingPost;
}
