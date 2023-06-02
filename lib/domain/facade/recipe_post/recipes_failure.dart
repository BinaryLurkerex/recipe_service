import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipes_failure.freezed.dart';

@freezed
abstract class RecipesFailure with _$RecipesFailure {
  const factory RecipesFailure.serverError() = ServerError;
  const factory RecipesFailure.insufficientPermissions() = InsufficientPermissions;
}
