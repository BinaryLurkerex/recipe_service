// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(String session) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(String session)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(String session)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InititalAuthState value) initial,
    required TResult Function(UnauthorizedAuthState value) unauthorized,
    required TResult Function(AuthorizedAuthState value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InititalAuthState value)? initial,
    TResult? Function(UnauthorizedAuthState value)? unauthorized,
    TResult? Function(AuthorizedAuthState value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InititalAuthState value)? initial,
    TResult Function(UnauthorizedAuthState value)? unauthorized,
    TResult Function(AuthorizedAuthState value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InititalAuthStateCopyWith<$Res> {
  factory _$$InititalAuthStateCopyWith(
          _$InititalAuthState value, $Res Function(_$InititalAuthState) then) =
      __$$InititalAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InititalAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InititalAuthState>
    implements _$$InititalAuthStateCopyWith<$Res> {
  __$$InititalAuthStateCopyWithImpl(
      _$InititalAuthState _value, $Res Function(_$InititalAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InititalAuthState implements InititalAuthState {
  const _$InititalAuthState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InititalAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(String session) authorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(String session)? authorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(String session)? authorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InititalAuthState value) initial,
    required TResult Function(UnauthorizedAuthState value) unauthorized,
    required TResult Function(AuthorizedAuthState value) authorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InititalAuthState value)? initial,
    TResult? Function(UnauthorizedAuthState value)? unauthorized,
    TResult? Function(AuthorizedAuthState value)? authorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InititalAuthState value)? initial,
    TResult Function(UnauthorizedAuthState value)? unauthorized,
    TResult Function(AuthorizedAuthState value)? authorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InititalAuthState implements AuthState {
  const factory InititalAuthState() = _$InititalAuthState;
}

/// @nodoc
abstract class _$$UnauthorizedAuthStateCopyWith<$Res> {
  factory _$$UnauthorizedAuthStateCopyWith(_$UnauthorizedAuthState value,
          $Res Function(_$UnauthorizedAuthState) then) =
      __$$UnauthorizedAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthorizedAuthState>
    implements _$$UnauthorizedAuthStateCopyWith<$Res> {
  __$$UnauthorizedAuthStateCopyWithImpl(_$UnauthorizedAuthState _value,
      $Res Function(_$UnauthorizedAuthState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedAuthState implements UnauthorizedAuthState {
  const _$UnauthorizedAuthState();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(String session) authorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(String session)? authorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(String session)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InititalAuthState value) initial,
    required TResult Function(UnauthorizedAuthState value) unauthorized,
    required TResult Function(AuthorizedAuthState value) authorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InititalAuthState value)? initial,
    TResult? Function(UnauthorizedAuthState value)? unauthorized,
    TResult? Function(AuthorizedAuthState value)? authorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InititalAuthState value)? initial,
    TResult Function(UnauthorizedAuthState value)? unauthorized,
    TResult Function(AuthorizedAuthState value)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedAuthState implements AuthState {
  const factory UnauthorizedAuthState() = _$UnauthorizedAuthState;
}

/// @nodoc
abstract class _$$AuthorizedAuthStateCopyWith<$Res> {
  factory _$$AuthorizedAuthStateCopyWith(_$AuthorizedAuthState value,
          $Res Function(_$AuthorizedAuthState) then) =
      __$$AuthorizedAuthStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String session});
}

/// @nodoc
class __$$AuthorizedAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedAuthState>
    implements _$$AuthorizedAuthStateCopyWith<$Res> {
  __$$AuthorizedAuthStateCopyWithImpl(
      _$AuthorizedAuthState _value, $Res Function(_$AuthorizedAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$AuthorizedAuthState(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthorizedAuthState implements AuthorizedAuthState {
  const _$AuthorizedAuthState({required this.session});

  @override
  final String session;

  @override
  String toString() {
    return 'AuthState.authorized(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedAuthState &&
            (identical(other.session, session) || other.session == session));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedAuthStateCopyWith<_$AuthorizedAuthState> get copyWith =>
      __$$AuthorizedAuthStateCopyWithImpl<_$AuthorizedAuthState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthorized,
    required TResult Function(String session) authorized,
  }) {
    return authorized(session);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthorized,
    TResult? Function(String session)? authorized,
  }) {
    return authorized?.call(session);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthorized,
    TResult Function(String session)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(session);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InititalAuthState value) initial,
    required TResult Function(UnauthorizedAuthState value) unauthorized,
    required TResult Function(AuthorizedAuthState value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InititalAuthState value)? initial,
    TResult? Function(UnauthorizedAuthState value)? unauthorized,
    TResult? Function(AuthorizedAuthState value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InititalAuthState value)? initial,
    TResult Function(UnauthorizedAuthState value)? unauthorized,
    TResult Function(AuthorizedAuthState value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthorizedAuthState implements AuthState {
  const factory AuthorizedAuthState({required final String session}) =
      _$AuthorizedAuthState;

  String get session;
  @JsonKey(ignore: true)
  _$$AuthorizedAuthStateCopyWith<_$AuthorizedAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String email, String username, String password)
        signup,
    required TResult Function(String email, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String email, String username, String password)? signup,
    TResult? Function(String email, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String email, String username, String password)? signup,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshAuthEvent value) refresh,
    required TResult Function(SignupAuthEvent value) signup,
    required TResult Function(LoginAuthEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshAuthEvent value)? refresh,
    TResult? Function(SignupAuthEvent value)? signup,
    TResult? Function(LoginAuthEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshAuthEvent value)? refresh,
    TResult Function(SignupAuthEvent value)? signup,
    TResult Function(LoginAuthEvent value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshAuthEventCopyWith<$Res> {
  factory _$$RefreshAuthEventCopyWith(
          _$RefreshAuthEvent value, $Res Function(_$RefreshAuthEvent) then) =
      __$$RefreshAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RefreshAuthEvent>
    implements _$$RefreshAuthEventCopyWith<$Res> {
  __$$RefreshAuthEventCopyWithImpl(
      _$RefreshAuthEvent _value, $Res Function(_$RefreshAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshAuthEvent implements RefreshAuthEvent {
  const _$RefreshAuthEvent();

  @override
  String toString() {
    return 'AuthEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String email, String username, String password)
        signup,
    required TResult Function(String email, String password) login,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String email, String username, String password)? signup,
    TResult? Function(String email, String password)? login,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String email, String username, String password)? signup,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshAuthEvent value) refresh,
    required TResult Function(SignupAuthEvent value) signup,
    required TResult Function(LoginAuthEvent value) login,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshAuthEvent value)? refresh,
    TResult? Function(SignupAuthEvent value)? signup,
    TResult? Function(LoginAuthEvent value)? login,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshAuthEvent value)? refresh,
    TResult Function(SignupAuthEvent value)? signup,
    TResult Function(LoginAuthEvent value)? login,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshAuthEvent implements AuthEvent {
  const factory RefreshAuthEvent() = _$RefreshAuthEvent;
}

/// @nodoc
abstract class _$$SignupAuthEventCopyWith<$Res> {
  factory _$$SignupAuthEventCopyWith(
          _$SignupAuthEvent value, $Res Function(_$SignupAuthEvent) then) =
      __$$SignupAuthEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$$SignupAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupAuthEvent>
    implements _$$SignupAuthEventCopyWith<$Res> {
  __$$SignupAuthEventCopyWithImpl(
      _$SignupAuthEvent _value, $Res Function(_$SignupAuthEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SignupAuthEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupAuthEvent implements SignupAuthEvent {
  const _$SignupAuthEvent(
      {required this.email, required this.username, required this.password});

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signup(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupAuthEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupAuthEventCopyWith<_$SignupAuthEvent> get copyWith =>
      __$$SignupAuthEventCopyWithImpl<_$SignupAuthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String email, String username, String password)
        signup,
    required TResult Function(String email, String password) login,
  }) {
    return signup(email, username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String email, String username, String password)? signup,
    TResult? Function(String email, String password)? login,
  }) {
    return signup?.call(email, username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String email, String username, String password)? signup,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(email, username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshAuthEvent value) refresh,
    required TResult Function(SignupAuthEvent value) signup,
    required TResult Function(LoginAuthEvent value) login,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshAuthEvent value)? refresh,
    TResult? Function(SignupAuthEvent value)? signup,
    TResult? Function(LoginAuthEvent value)? login,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshAuthEvent value)? refresh,
    TResult Function(SignupAuthEvent value)? signup,
    TResult Function(LoginAuthEvent value)? login,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class SignupAuthEvent implements AuthEvent {
  const factory SignupAuthEvent(
      {required final String email,
      required final String username,
      required final String password}) = _$SignupAuthEvent;

  String get email;
  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$SignupAuthEventCopyWith<_$SignupAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAuthEventCopyWith<$Res> {
  factory _$$LoginAuthEventCopyWith(
          _$LoginAuthEvent value, $Res Function(_$LoginAuthEvent) then) =
      __$$LoginAuthEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginAuthEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginAuthEvent>
    implements _$$LoginAuthEventCopyWith<$Res> {
  __$$LoginAuthEventCopyWithImpl(
      _$LoginAuthEvent _value, $Res Function(_$LoginAuthEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginAuthEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginAuthEvent implements LoginAuthEvent {
  const _$LoginAuthEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAuthEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginAuthEventCopyWith<_$LoginAuthEvent> get copyWith =>
      __$$LoginAuthEventCopyWithImpl<_$LoginAuthEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String email, String username, String password)
        signup,
    required TResult Function(String email, String password) login,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
    TResult? Function(String email, String username, String password)? signup,
    TResult? Function(String email, String password)? login,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String email, String username, String password)? signup,
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RefreshAuthEvent value) refresh,
    required TResult Function(SignupAuthEvent value) signup,
    required TResult Function(LoginAuthEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RefreshAuthEvent value)? refresh,
    TResult? Function(SignupAuthEvent value)? signup,
    TResult? Function(LoginAuthEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RefreshAuthEvent value)? refresh,
    TResult Function(SignupAuthEvent value)? signup,
    TResult Function(LoginAuthEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAuthEvent implements AuthEvent {
  const factory LoginAuthEvent(
      {required final String email,
      required final String password}) = _$LoginAuthEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginAuthEventCopyWith<_$LoginAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
