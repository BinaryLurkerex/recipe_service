// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(DataHomeState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(DataHomeState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(DataHomeState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingHomeStateCopyWith<$Res> {
  factory _$$LoadingHomeStateCopyWith(
          _$LoadingHomeState value, $Res Function(_$LoadingHomeState) then) =
      __$$LoadingHomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeState>
    implements _$$LoadingHomeStateCopyWith<$Res> {
  __$$LoadingHomeStateCopyWithImpl(
      _$LoadingHomeState _value, $Res Function(_$LoadingHomeState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeState implements LoadingHomeState {
  const _$LoadingHomeState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
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
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(DataHomeState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(DataHomeState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(DataHomeState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeState;
}

/// @nodoc
abstract class _$$DataHomeStateCopyWith<$Res> {
  factory _$$DataHomeStateCopyWith(
          _$DataHomeState value, $Res Function(_$DataHomeState) then) =
      __$$DataHomeStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentRecipe, List<Recipe> recipes, bool isLastLoaded});
}

/// @nodoc
class __$$DataHomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$DataHomeState>
    implements _$$DataHomeStateCopyWith<$Res> {
  __$$DataHomeStateCopyWithImpl(
      _$DataHomeState _value, $Res Function(_$DataHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentRecipe = null,
    Object? recipes = null,
    Object? isLastLoaded = null,
  }) {
    return _then(_$DataHomeState(
      currentRecipe: null == currentRecipe
          ? _value.currentRecipe
          : currentRecipe // ignore: cast_nullable_to_non_nullable
              as int,
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isLastLoaded: null == isLastLoaded
          ? _value.isLastLoaded
          : isLastLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataHomeState implements DataHomeState {
  const _$DataHomeState(
      {required this.currentRecipe,
      required final List<Recipe> recipes,
      required this.isLastLoaded})
      : _recipes = recipes;

  @override
  final int currentRecipe;
  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final bool isLastLoaded;

  @override
  String toString() {
    return 'HomeState.data(currentRecipe: $currentRecipe, recipes: $recipes, isLastLoaded: $isLastLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataHomeState &&
            (identical(other.currentRecipe, currentRecipe) ||
                other.currentRecipe == currentRecipe) &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isLastLoaded, isLastLoaded) ||
                other.isLastLoaded == isLastLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentRecipe,
      const DeepCollectionEquality().hash(_recipes), isLastLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataHomeStateCopyWith<_$DataHomeState> get copyWith =>
      __$$DataHomeStateCopyWithImpl<_$DataHomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)
        data,
  }) {
    return data(currentRecipe, recipes, isLastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
  }) {
    return data?.call(currentRecipe, recipes, isLastLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int currentRecipe, List<Recipe> recipes, bool isLastLoaded)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(currentRecipe, recipes, isLastLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(DataHomeState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(DataHomeState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(DataHomeState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataHomeState implements HomeState {
  const factory DataHomeState(
      {required final int currentRecipe,
      required final List<Recipe> recipes,
      required final bool isLastLoaded}) = _$DataHomeState;

  int get currentRecipe;
  List<Recipe> get recipes;
  bool get isLastLoaded;
  @JsonKey(ignore: true)
  _$$DataHomeStateCopyWith<_$DataHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() next,
    required TResult Function() prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? next,
    TResult? Function()? prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? next,
    TResult Function()? prev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeEvent value) load,
    required TResult Function(NextHomeEvent value) next,
    required TResult Function(PrevHomeEvent value) prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeEvent value)? load,
    TResult? Function(NextHomeEvent value)? next,
    TResult? Function(PrevHomeEvent value)? prev,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeEvent value)? load,
    TResult Function(NextHomeEvent value)? next,
    TResult Function(PrevHomeEvent value)? prev,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadHomeEventCopyWith<$Res> {
  factory _$$LoadHomeEventCopyWith(
          _$LoadHomeEvent value, $Res Function(_$LoadHomeEvent) then) =
      __$$LoadHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadHomeEvent>
    implements _$$LoadHomeEventCopyWith<$Res> {
  __$$LoadHomeEventCopyWithImpl(
      _$LoadHomeEvent _value, $Res Function(_$LoadHomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadHomeEvent implements LoadHomeEvent {
  const _$LoadHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() next,
    required TResult Function() prev,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? next,
    TResult? Function()? prev,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? next,
    TResult Function()? prev,
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
    required TResult Function(LoadHomeEvent value) load,
    required TResult Function(NextHomeEvent value) next,
    required TResult Function(PrevHomeEvent value) prev,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeEvent value)? load,
    TResult? Function(NextHomeEvent value)? next,
    TResult? Function(PrevHomeEvent value)? prev,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeEvent value)? load,
    TResult Function(NextHomeEvent value)? next,
    TResult Function(PrevHomeEvent value)? prev,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadHomeEvent implements HomeEvent {
  const factory LoadHomeEvent() = _$LoadHomeEvent;
}

/// @nodoc
abstract class _$$NextHomeEventCopyWith<$Res> {
  factory _$$NextHomeEventCopyWith(
          _$NextHomeEvent value, $Res Function(_$NextHomeEvent) then) =
      __$$NextHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NextHomeEvent>
    implements _$$NextHomeEventCopyWith<$Res> {
  __$$NextHomeEventCopyWithImpl(
      _$NextHomeEvent _value, $Res Function(_$NextHomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextHomeEvent implements NextHomeEvent {
  const _$NextHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.next()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() next,
    required TResult Function() prev,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? next,
    TResult? Function()? prev,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? next,
    TResult Function()? prev,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeEvent value) load,
    required TResult Function(NextHomeEvent value) next,
    required TResult Function(PrevHomeEvent value) prev,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeEvent value)? load,
    TResult? Function(NextHomeEvent value)? next,
    TResult? Function(PrevHomeEvent value)? prev,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeEvent value)? load,
    TResult Function(NextHomeEvent value)? next,
    TResult Function(PrevHomeEvent value)? prev,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class NextHomeEvent implements HomeEvent {
  const factory NextHomeEvent() = _$NextHomeEvent;
}

/// @nodoc
abstract class _$$PrevHomeEventCopyWith<$Res> {
  factory _$$PrevHomeEventCopyWith(
          _$PrevHomeEvent value, $Res Function(_$PrevHomeEvent) then) =
      __$$PrevHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevHomeEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$PrevHomeEvent>
    implements _$$PrevHomeEventCopyWith<$Res> {
  __$$PrevHomeEventCopyWithImpl(
      _$PrevHomeEvent _value, $Res Function(_$PrevHomeEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrevHomeEvent implements PrevHomeEvent {
  const _$PrevHomeEvent();

  @override
  String toString() {
    return 'HomeEvent.prev()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrevHomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() next,
    required TResult Function() prev,
  }) {
    return prev();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? next,
    TResult? Function()? prev,
  }) {
    return prev?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? next,
    TResult Function()? prev,
    required TResult orElse(),
  }) {
    if (prev != null) {
      return prev();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadHomeEvent value) load,
    required TResult Function(NextHomeEvent value) next,
    required TResult Function(PrevHomeEvent value) prev,
  }) {
    return prev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadHomeEvent value)? load,
    TResult? Function(NextHomeEvent value)? next,
    TResult? Function(PrevHomeEvent value)? prev,
  }) {
    return prev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadHomeEvent value)? load,
    TResult Function(NextHomeEvent value)? next,
    TResult Function(PrevHomeEvent value)? prev,
    required TResult orElse(),
  }) {
    if (prev != null) {
      return prev(this);
    }
    return orElse();
  }
}

abstract class PrevHomeEvent implements HomeEvent {
  const factory PrevHomeEvent() = _$PrevHomeEvent;
}
