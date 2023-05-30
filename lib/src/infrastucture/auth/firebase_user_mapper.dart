import 'package:firebase_auth/firebase_auth.dart' as _google;
import 'package:injectable/injectable.dart';
import 'package:recipe/src/domain/auth/user.dart';
import 'package:recipe/src/domain/auth/value_objects.dart';
import 'package:recipe/src/domain/core/value_object.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(_google.User _) {
    return User(
      id: UniqueId.fromUniqueString(_.uid),
      name: _.displayName ?? _.email?.split('@').first ?? '',
      emailAddress: EmailAddress(_.email ?? ''),
    );
  }
}
