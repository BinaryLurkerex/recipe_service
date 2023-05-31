import 'package:firebase_auth/firebase_auth.dart' as google;
import 'package:injectable/injectable.dart';
import 'package:recipe_service/domain/facade/auth/user.dart';
import 'package:recipe_service/domain/facade/auth/value_objects.dart';
import 'package:recipe_service/domain/core/value_object.dart';

@lazySingleton
class FirebaseUserMapper {
  User? toDomain(google.User? _) {
    if (_ == null) {
      return null;
    }

    return User(
      id: UniqueId.fromUniqueString(_.uid),
      name: _.displayName ?? _.email?.split('@').first ?? '',
      emailAddress: EmailAddress(_.email ?? ''),
    );
  }
}
