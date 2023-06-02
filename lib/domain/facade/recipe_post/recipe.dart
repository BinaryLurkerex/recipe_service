import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/entity.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/recipe_post/value_objects.dart';

part 'recipe.freezed.dart';

@freezed
abstract class Recipe with _$Recipe implements Entity {
  const factory Recipe({
    required UniqueId id,
    required PostTitle title,
    required KtList<PostImage> recipeImages,
    required KtList<PostTitle> recipeSubtitles,
    required KtList<PostData> recipeDatas,
  }) = _Post;
}
