import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:recipe/domain/core/value_object.dart';
import 'package:recipe/domain/facade/profile/profile.dart';
import 'package:recipe/domain/facade/profile/profile_facade.dart';
import 'package:recipe/domain/facade/profile/profile_failure.dart';
import 'package:firebase_auth/firebase_auth.dart' as google;
import 'package:recipe/domain/facade/profile/value_ojects.dart';

@prod
@LazySingleton(as: ProfileFacade)
class FirebaseProfileFacade implements ProfileFacade {
  // ignore: unused_field
  final google.FirebaseAuth _firebaseAuth;

  FirebaseProfileFacade(
    this._firebaseAuth,
  );

  // `Self-User` Events

  @override
  Future<Either<ProfileFailure, Profile>> getProfile() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateUsername(Username usename) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, Unit>> updateAvatar(Avatar avatar) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, Unit>> deleteAccount() {
    throw UnimplementedError();
  }

  // `Self-User` & `Side-User` Events

  @override
  Future<Either<ProfileFailure, KtList<String>>> getProfilePostsListId([UniqueId? id]) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, KtList<String>>> getProfileFollowersListId([UniqueId? id]) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ProfileFailure, KtList<String>>> getProfileFollowingListID([UniqueId? id]) {
    throw UnimplementedError();
  }

  // `Side-User` Events

  @override
  Future<Either<ProfileFailure, Profile>> getProfileById(UniqueId id) {
    throw UnimplementedError();
  }
}
