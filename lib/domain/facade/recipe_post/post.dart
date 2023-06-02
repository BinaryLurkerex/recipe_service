import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/entity.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipe.dart';

part 'post.freezed.dart';

@freezed
abstract class Post with _$Post implements Entity {
  const factory Post({
    required UniqueId id,
    required UniqueId owner,
    required Recipe recipe,
    required KtList<UniqueId> likes,
    required KtList<UniqueId> followers,
    required KtList<UniqueId> bookmarks,
  }) = _Post;
}
