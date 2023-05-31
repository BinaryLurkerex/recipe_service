import 'package:dartz/dartz.dart';
import 'package:recipe/domain/core/value_failure.dart';
import 'package:recipe/domain/core/value_object.dart';
import 'package:recipe/domain/core/value_validators.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      validateMaxStringLength(
        input,
        20,
      )
          .flatMap(
            validateStringNotEmpty,
          )
          .flatMap(
            validateSingleLine,
          ),
    );
  }

  const Username._(this.value);
}

class Avatar extends ValueObject<String?> {
  @override
  final Either<ValueFailure<String?>, String?> value;

  factory Avatar(String? input) {
    if (input == null) {
      return const Avatar._(Right(null));
    }

    return Avatar._(
      validateSingleLine(input),
    );
  }

  const Avatar._(this.value);
}
