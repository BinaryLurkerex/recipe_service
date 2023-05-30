import 'package:firebase_auth/firebase_auth.dart' as _google;
import 'package:injectable/injectable.dart';
import 'package:recipe/domain/auth/user.dart';
import 'package:recipe/domain/auth/value_objects.dart';
import 'package:recipe/domain/core/value_object.dart';

@lazySingleton
class FirebaseUserMapper {
  User? toDomain(_google.User? _) {
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
