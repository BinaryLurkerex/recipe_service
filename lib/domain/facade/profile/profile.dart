import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_service/domain/core/entity.dart';
import 'package:recipe_service/domain/core/value_object.dart';
import 'package:recipe_service/domain/facade/profile/value_ojects.dart';

part 'profile.freezed.dart';

@freezed
abstract class Profile with _$Profile implements Entity {
  const factory Profile({
    required UniqueId id,
    required Username username,
    required Avatar avatar,
    required List3<int> summary,
  }) = _Profile;
}
