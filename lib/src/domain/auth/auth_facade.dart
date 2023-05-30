import 'package:dartz/dartz.dart';
import 'package:recipe/src/domain/auth/auth_failure.dart';
import 'package:recipe/src/domain/auth/user.dart';
import 'package:recipe/src/domain/auth/value_objects.dart';

abstract class AuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
