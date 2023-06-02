import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/recipe_post/post.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipes_failure.dart';

abstract class PostFacade {
  Future<Either<RecipesFailure, KtList<Post>>> getPopularPosts([int offset]);
  Future<Either<RecipesFailure, KtList<Post>>> getUserBookmarkedPosts(UniqueId uuid, [int offset]);
  Future<Either<RecipesFailure, KtList<Post>>> getUserPosts(UniqueId uuid, [int offset]);
  Future<Either<RecipesFailure, KtList<Post>>> uploadPost(Post post);
  Future<Either<RecipesFailure, Unit>> deletePost(UniqueId uid);
  Future<Either<RecipesFailure, Unit>> bookmarkPost(UniqueId uid);
  Future<Either<RecipesFailure, Unit>> likePost(UniqueId uid);
  Future<Either<RecipesFailure, Unit>> commentPost(UniqueId uid, String comment);
}
