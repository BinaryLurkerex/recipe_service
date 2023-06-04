import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/recipe_post/post.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipes_facade.dart';
import 'package:recipe_service/domain/facade/recipe_post/recipes_failure.dart';
import 'package:firebase_auth/firebase_auth.dart' as google;
import 'package:recipe_service/infrastucture/recipe_post/firebase_post_mapper.dart';

@prod
@LazySingleton(as: RecipesFacade)
class FirebaseRecipesFacade implements RecipesFacade {
  final google.FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  final FirebasePostMapper _firebasePostMapper;

  FirebaseRecipesFacade(
    this._firebaseAuth,
    this._firebaseFirestore,
    this._firebasePostMapper,
  );

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getPopularPosts([int? offset]) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getUserBookmarkedPosts(UniqueId uuid, [int? offset]) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> getUserPosts(UniqueId uuid, [int? offset]) async {
    try {
      final String? uuid = _firebaseAuth.currentUser?.uid;

      if (_firebaseAuth.currentUser?.uid == null) {
        return left(const RecipesFailure.serverError());
      }

      final snapshot = await _firebaseFirestore
          .collection(
            'recipes',
          )
          .where(
            'owner',
            isEqualTo: uuid,
          )
          .get();

      final data = snapshot.docs.map((doc) {
        return _firebasePostMapper.toDomain(doc);
      });

      final Iterable<Post> recipes = data.where((Post? e) => e != null) as Iterable<Post>;

      return right(recipes.toImmutableList());
    } catch (e) {
      return left(
        const RecipesFailure.insufficientPermissions(),
      );
    }
  }

  @override
  Future<Either<RecipesFailure, KtList<Post>>> uploadPost(Post post) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> deletePost(UniqueId uid) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> bookmarkPost(UniqueId uid) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> likePost(UniqueId uid) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RecipesFailure, Unit>> commentPost(UniqueId uid, String comment) {
    throw UnimplementedError();
  }
}
