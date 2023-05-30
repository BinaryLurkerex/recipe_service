import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as _google;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:recipe/domain/auth/auth_facade.dart';
import 'package:recipe/domain/auth/auth_failure.dart';
import 'package:recipe/domain/auth/user.dart';
import 'package:recipe/domain/auth/value_objects.dart';
import 'package:recipe/infrastucture/auth/firebase_user_mapper.dart';

@prod
@LazySingleton(as: AuthFacade)
class FirebaseAuthFacade implements AuthFacade {
  final _google.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  @override
  Future<Option<User>> getSignedInUser() async {
    final _google.User? firebaseUser = _firebaseAuth.currentUser;
    if (firebaseUser == null) {
      throw const AuthFailure.serverError();
    }

    final User user = _firebaseUserMapper.toDomain(firebaseUser);
    return optionOf(user);
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((_) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailOrPassword());
      }

      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.serverError());
      }

      final googleAuthentication = await googleUser.authentication;
      final authCredential = _google.GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );

      return _firebaseAuth.signInWithCredential(authCredential).then((r) => right(unit));
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await Future.wait([
      _googleSignIn.signOut(),
      _firebaseAuth.signOut(),
    ]);
  }
}
