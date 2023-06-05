import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/recipe_post/post.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipes_facade.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipes_failure.dart';

@LazySingleton(as: RecipesFacade)
class LocalRecipesFacade implements RecipesFacade {
  @override
  Future<Either<RecipesFailure, Unit>> bookmarkPost(UniqueId uid) {
    // TODO: implement bookmarkPost
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> commentPost(UniqueId uid, String comment) {
    // TODO: implement commentPost
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> deletePost(UniqueId uid) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getPopularPosts([int offset]) {
    // TODO: implement getPopularPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getUserBookmarkedPosts(UniqueId uuid, [int offset]) {
    // TODO: implement getUserBookmarkedPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getUserPosts(UniqueId uuid, [int offset]) {
    // TODO: implement getUserPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> likePost(UniqueId uid) {
    // TODO: implement likePost
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> uploadPost(Post post) {
    // TODO: implement uploadPost
    throw UnimplementedError();
  }
}
