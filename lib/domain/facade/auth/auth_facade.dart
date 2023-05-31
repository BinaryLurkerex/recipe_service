import 'package:dartz/dartz.dart';
import 'package:recipe_service/domain/facade/auth/auth_failure.dart';
import 'package:recipe_service/domain/facade/auth/user.dart';
import 'package:recipe_service/domain/facade/auth/value_objects.dart';

abstract class AuthFacade {
  Future<Option<User?>> getSignedInUser();
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
