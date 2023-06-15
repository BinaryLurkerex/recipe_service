import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/application/application_entities.dart';
import 'package:recipe_service/domain/facade/application/application_failure.dart';
import 'package:recipe_service/domain/facade/application/value_objects.dart';

// abstract class ApplicationFacade {
//   Future<Either<ApplicationFailure, KtList<Post>>> getPopularPosts([int offset]);
//   Future<Either<ApplicationFailure, KtList<Post>>> getUserBookmarkedPosts(UniqueId uuid, [int offset]);
//   Future<Either<ApplicationFailure, KtList<Post>>> getUserPosts(UniqueId uuid, [int offset]);
//   Future<Either<ApplicationFailure, Unit>> uploadPost(UniqueId uid, Post post);
//   Future<Either<ApplicationFailure, Unit>> deletePost(UniqueId uid, UniqueId post);
//   Future<Either<ApplicationFailure, Unit>> bookmarkPost(UniqueId uid, UniqueId post);
//   Future<Either<ApplicationFailure, Unit>> likePost(UniqueId uid, UniqueId post);
//   Future<Either<ApplicationFailure, Unit>> commentPost(UniqueId uid, UniqueId post, Comment comment);
// }
