import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/application/application_entities.dart';
import 'package:recipe_service/domain/facade/application/application_facade.dart';
import 'package:recipe_service/domain/facade/application/application_failure.dart';
import 'package:recipe_service/domain/facade/application/value_objects.dart';
import 'package:recipe_service/infrastucture/local/entities/comment.dart';
import 'package:recipe_service/infrastucture/local/entities/post.dart';
import 'package:recipe_service/infrastucture/local/entities/profile.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: ApplicationFacade)
class LocalApplicationFacade implements ApplicationFacade {
  static const _profilesPath = 'profiles';
  static const _postsPath = 'posts';
  static const _commentsPath = 'comments';

  @PostConstruct()
  Future<void> init() async {
    uuid = const Uuid();
    profileBox = await Hive.openBox<ProfileModel>(_profilesPath);
    postBox = await Hive.openBox<PostModel>(_postsPath);
    commentBox = await Hive.openBox<CommentModel>(_commentsPath);
  }

  late final Uuid uuid;
  late final Box<String> bookmarksBox;
  late final Box<ProfileModel> profileBox;
  late final Box<PostModel> postBox;
  late final Box<CommentModel> commentBox;

  @override
  Future<Either<ApplicationFailure, Unit>> bookmarkPost(UniqueId uid, UniqueId post) async {
    try {
      ProfileModel? model = profileBox.get(uid);

      if (model == null) {
        return left(const ApplicationFailure.missingPost());
      }

      profileBox.put(
        uid,
        ProfileModel(
          id: model.id,
          name: model.name,
          avatar: model.avatar,
          likes: model.likes,
          bookmarks: model.bookmarks +
              [
                post.value.getOrElse(
                  () => throw const ApplicationFailure.missingParametrs(),
                ),
              ],
          following: model.following,
        ),
      );

      return right(unit);
    } catch (_) {
      return left(
        const ApplicationFailure.insufficientPermissions(),
      );
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> commentPost(UniqueId uid, UniqueId post, Comment comment) async {
    try {
      if (uid.isValid() && comment.isValid() && post.isValid()) {
        await commentBox.add(
          CommentModel(
            id: uuid.v4(),
            date: DateTime.now().toIso8601String(),
            sender: uid.value.getOrElse(() => throw const ApplicationFailure.missingParametrs()),
            post: post.value.getOrElse(() => throw const ApplicationFailure.missingParametrs()),
            message: comment.value.getOrElse(() => throw const ApplicationFailure.missingParametrs()),
          ),
        );

        return right(unit);
      } else {
        return left(const ApplicationFailure.missingParametrs());
      }
    } catch (e) {
      return left(const ApplicationFailure.insufficientPermissions());
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> deletePost(UniqueId uid, UniqueId post) async {
    try {
      if (uid.isValid() && post.isValid()) {
        final PostModel? data = postBox.get(post.value.getOrElse(() => throw const ApplicationFailure.missingParametrs()));
        final String postSender = uid.value.getOrElse(() => throw const ApplicationFailure.missingParametrs());

        if (data != null && data.publisher == postSender) {
          await postBox.delete(postSender);

          return right(unit);
        }

        return left(const ApplicationFailure.missingParametrs());
      } else {
        return left(const ApplicationFailure.missingParametrs());
      }
    } catch (_) {
      return left(const ApplicationFailure.insufficientPermissions());
    }
  }

  @override
  Future<Either<ApplicationFailure, KtList<Post>>> getPopularPosts([int? offset]) {
    // TODO: implement getPopularPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, KtList<Post>>> getUserBookmarkedPosts(UniqueId uuid, [int? offset]) {
    // TODO: implement getUserBookmarkedPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, KtList<Post>>> getUserPosts(UniqueId uuid, [int? offset]) {
    // TODO: implement getUserPosts
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, Unit>> likePost(UniqueId uid, UniqueId post) {
    // TODO: implement likePost
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, KtList<Post>>> uploadPost(Post post) {
    // TODO: implement uploadPost
    throw UnimplementedError();
  }
}
