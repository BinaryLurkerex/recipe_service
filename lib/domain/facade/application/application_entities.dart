import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/entity.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/application/value_objects.dart';

// part 'application_entities.freezed.dart';

// @freezed
// abstract class Post with _$Post implements Entity {
//   const factory Post({
//     required UniqueId id,
//     required UniqueId owner,
//     required Recipe recipe,
//     required KtList<UniqueId> likes,
//     required KtList<UniqueId> followers,
//     required KtList<UniqueId> bookmarks,
//   }) = _Post;
// }

// @freezed
// abstract class PostComment with _$PostComment implements Entity {
//   const factory PostComment({
//     required UniqueId id,
//     required UniqueId sender,
//     required Timestamp timestamp,
//     required Comment comment,
//   }) = _PostComment;
// }

// @freezed
// abstract class Recipe with _$Recipe implements Entity {
//   const factory Recipe({
//     required UniqueId id,
//     required PostTitle title,
//     required KtList<PostImage> recipeImages,
//     required KtList<PostTitle> recipeSubtitles,
//     required KtList<PostData> recipeDatas,
//   }) = _Recipe;
// }
