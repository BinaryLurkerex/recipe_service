// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes, bool? isLastLoaded) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes, bool? isLastLoaded)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes, bool? isLastLoaded)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBookmarksState value) loading,
    required TResult Function(DataBookmarksState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookmarksState value)? loading,
    TResult? Function(DataBookmarksState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookmarksState value)? loading,
    TResult Function(DataBookmarksState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksStateCopyWith<$Res> {
  factory $BookmarksStateCopyWith(
          BookmarksState value, $Res Function(BookmarksState) then) =
      _$BookmarksStateCopyWithImpl<$Res, BookmarksState>;
}

/// @nodoc
class _$BookmarksStateCopyWithImpl<$Res, $Val extends BookmarksState>
    implements $BookmarksStateCopyWith<$Res> {
  _$BookmarksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingBookmarksStateCopyWith<$Res> {
  factory _$$LoadingBookmarksStateCopyWith(_$LoadingBookmarksState value,
          $Res Function(_$LoadingBookmarksState) then) =
      __$$LoadingBookmarksStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBookmarksStateCopyWithImpl<$Res>
    extends _$BookmarksStateCopyWithImpl<$Res, _$LoadingBookmarksState>
    implements _$$LoadingBookmarksStateCopyWith<$Res> {
  __$$LoadingBookmarksStateCopyWithImpl(_$LoadingBookmarksState _value,
      $Res Function(_$LoadingBookmarksState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingBookmarksState implements LoadingBookmarksState {
  const _$LoadingBookmarksState();

  @override
  String toString() {
    return 'BookmarksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBookmarksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes, bool? isLastLoaded) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes, bool? isLastLoaded)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes, bool? isLastLoaded)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBookmarksState value) loading,
    required TResult Function(DataBookmarksState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookmarksState value)? loading,
    TResult? Function(DataBookmarksState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookmarksState value)? loading,
    TResult Function(DataBookmarksState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBookmarksState implements BookmarksState {
  const factory LoadingBookmarksState() = _$LoadingBookmarksState;
}

/// @nodoc
abstract class _$$DataBookmarksStateCopyWith<$Res> {
  factory _$$DataBookmarksStateCopyWith(_$DataBookmarksState value,
          $Res Function(_$DataBookmarksState) then) =
      __$$DataBookmarksStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipes, bool? isLastLoaded});
}

/// @nodoc
class __$$DataBookmarksStateCopyWithImpl<$Res>
    extends _$BookmarksStateCopyWithImpl<$Res, _$DataBookmarksState>
    implements _$$DataBookmarksStateCopyWith<$Res> {
  __$$DataBookmarksStateCopyWithImpl(
      _$DataBookmarksState _value, $Res Function(_$DataBookmarksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isLastLoaded = freezed,
  }) {
    return _then(_$DataBookmarksState(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLastLoaded: freezed == isLastLoaded
          ? _value.isLastLoaded
          : isLastLoaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$DataBookmarksState implements DataBookmarksState {
  const _$DataBookmarksState(
      {required final List<Recipe> recipes, this.isLastLoaded})
      : _recipes = recipes;

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final bool? isLastLoaded;

  @override
  String toString() {
    return 'BookmarksState.data(recipes: $recipes, isLastLoaded: $isLastLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBookmarksState &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLastLoaded, isLastLoaded) ||
                other.isLastLoaded == isLastLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipes), isLastLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBookmarksStateCopyWith<_$DataBookmarksState> get copyWith =>
      __$$DataBookmarksStateCopyWithImpl<_$DataBookmarksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Recipe> recipes, bool? isLastLoaded) data,
  }) {
    return data(recipes, isLastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Recipe> recipes, bool? isLastLoaded)? data,
  }) {
    return data?.call(recipes, isLastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Recipe> recipes, bool? isLastLoaded)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(recipes, isLastLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingBookmarksState value) loading,
    required TResult Function(DataBookmarksState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingBookmarksState value)? loading,
    TResult? Function(DataBookmarksState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingBookmarksState value)? loading,
    TResult Function(DataBookmarksState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataBookmarksState implements BookmarksState {
  const factory DataBookmarksState(
      {required final List<Recipe> recipes,
      final bool? isLastLoaded}) = _$DataBookmarksState;

  List<Recipe> get recipes;
  bool? get isLastLoaded;
  @JsonKey(ignore: true)
  _$$DataBookmarksStateCopyWith<_$DataBookmarksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookmarksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookmarksEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookmarksEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookmarksEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarksEventCopyWith<$Res> {
  factory $BookmarksEventCopyWith(
          BookmarksEvent value, $Res Function(BookmarksEvent) then) =
      _$BookmarksEventCopyWithImpl<$Res, BookmarksEvent>;
}

/// @nodoc
class _$BookmarksEventCopyWithImpl<$Res, $Val extends BookmarksEvent>
    implements $BookmarksEventCopyWith<$Res> {
  _$BookmarksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadBookmarksEventCopyWith<$Res> {
  factory _$$LoadBookmarksEventCopyWith(_$LoadBookmarksEvent value,
          $Res Function(_$LoadBookmarksEvent) then) =
      __$$LoadBookmarksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadBookmarksEventCopyWithImpl<$Res>
    extends _$BookmarksEventCopyWithImpl<$Res, _$LoadBookmarksEvent>
    implements _$$LoadBookmarksEventCopyWith<$Res> {
  __$$LoadBookmarksEventCopyWithImpl(
      _$LoadBookmarksEvent _value, $Res Function(_$LoadBookmarksEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadBookmarksEvent implements LoadBookmarksEvent {
  const _$LoadBookmarksEvent();

  @override
  String toString() {
    return 'BookmarksEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadBookmarksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBookmarksEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadBookmarksEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBookmarksEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadBookmarksEvent implements BookmarksEvent {
  const factory LoadBookmarksEvent() = _$LoadBookmarksEvent;
}
