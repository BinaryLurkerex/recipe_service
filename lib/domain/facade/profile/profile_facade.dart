import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/profile/profile.dart';
import 'package:recipe_service/domain/facade/profile/profile_failure.dart';
import 'package:recipe_service/domain/facade/profile/value_ojects.dart';

abstract class ProfileFacade {
  // `Self-User` Events
  Future<Either<ProfileFailure, Profile>> getProfile();
  Future<Either<ProfileFailure, Unit>> updateUsername(Username usename);
  Future<Either<ProfileFailure, Unit>> updateAvatar(Avatar avatar);
  Future<Either<ProfileFailure, Unit>> deleteAccount();

  // `Self-User` & `Side-User` Events
  Future<Either<ProfileFailure, KtList<String>>> getProfilePostsListId([UniqueId? id]);
  Future<Either<ProfileFailure, KtList<String>>> getProfileFollowersListId([UniqueId? id]);
  Future<Either<ProfileFailure, KtList<String>>> getProfileFollowingListID([UniqueId? id]);

  // `Side-User` Events
  Future<Either<ProfileFailure, Profile>> getProfileById(UniqueId id);
}
