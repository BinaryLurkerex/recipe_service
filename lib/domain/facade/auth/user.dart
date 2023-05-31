import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe/domain/facade/auth/value_objects.dart';
import 'package:recipe/domain/core/entity.dart';
import 'package:recipe/domain/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements Entity {
  const factory User({
    required UniqueId id,
    required String name,
    required EmailAddress emailAddress,
  }) = _User;
}
