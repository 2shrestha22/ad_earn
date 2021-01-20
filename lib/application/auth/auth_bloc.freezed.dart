// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _AuthenticationUserChanged authenticationUserChanged({AuthUser user}) {
    return _AuthenticationUserChanged(
      user: user,
    );
  }

// ignore: unused_element
  _LogoutRequested logoutRequested() {
    return const _LogoutRequested();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult authenticationUserChanged(AuthUser user),
    @required TResult logoutRequested(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult authenticationUserChanged(AuthUser user),
    TResult logoutRequested(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required
        TResult authenticationUserChanged(_AuthenticationUserChanged value),
    @required TResult logoutRequested(_LogoutRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult authenticationUserChanged(_AuthenticationUserChanged value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult authenticationUserChanged(AuthUser user),
    @required TResult logoutRequested(),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult authenticationUserChanged(AuthUser user),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required
        TResult authenticationUserChanged(_AuthenticationUserChanged value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult authenticationUserChanged(_AuthenticationUserChanged value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AuthenticationUserChangedCopyWith<$Res> {
  factory _$AuthenticationUserChangedCopyWith(_AuthenticationUserChanged value,
          $Res Function(_AuthenticationUserChanged) then) =
      __$AuthenticationUserChangedCopyWithImpl<$Res>;
  $Res call({AuthUser user});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticationUserChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthenticationUserChangedCopyWith<$Res> {
  __$AuthenticationUserChangedCopyWithImpl(_AuthenticationUserChanged _value,
      $Res Function(_AuthenticationUserChanged) _then)
      : super(_value, (v) => _then(v as _AuthenticationUserChanged));

  @override
  _AuthenticationUserChanged get _value =>
      super._value as _AuthenticationUserChanged;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_AuthenticationUserChanged(
      user: user == freezed ? _value.user : user as AuthUser,
    ));
  }

  @override
  $AuthUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_AuthenticationUserChanged implements _AuthenticationUserChanged {
  const _$_AuthenticationUserChanged({this.user});

  @override
  final AuthUser user;

  @override
  String toString() {
    return 'AuthEvent.authenticationUserChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationUserChanged &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationUserChangedCopyWith<_AuthenticationUserChanged>
      get copyWith =>
          __$AuthenticationUserChangedCopyWithImpl<_AuthenticationUserChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult authenticationUserChanged(AuthUser user),
    @required TResult logoutRequested(),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return authenticationUserChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult authenticationUserChanged(AuthUser user),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticationUserChanged != null) {
      return authenticationUserChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required
        TResult authenticationUserChanged(_AuthenticationUserChanged value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return authenticationUserChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult authenticationUserChanged(_AuthenticationUserChanged value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticationUserChanged != null) {
      return authenticationUserChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationUserChanged implements AuthEvent {
  const factory _AuthenticationUserChanged({AuthUser user}) =
      _$_AuthenticationUserChanged;

  AuthUser get user;
  @JsonKey(ignore: true)
  _$AuthenticationUserChangedCopyWith<_AuthenticationUserChanged> get copyWith;
}

/// @nodoc
abstract class _$LogoutRequestedCopyWith<$Res> {
  factory _$LogoutRequestedCopyWith(
          _LogoutRequested value, $Res Function(_LogoutRequested) then) =
      __$LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutRequestedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutRequestedCopyWith<$Res> {
  __$LogoutRequestedCopyWithImpl(
      _LogoutRequested _value, $Res Function(_LogoutRequested) _then)
      : super(_value, (v) => _then(v as _LogoutRequested));

  @override
  _LogoutRequested get _value => super._value as _LogoutRequested;
}

/// @nodoc
class _$_LogoutRequested implements _LogoutRequested {
  const _$_LogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult authenticationUserChanged(AuthUser user),
    @required TResult logoutRequested(),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult authenticationUserChanged(AuthUser user),
    TResult logoutRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required
        TResult authenticationUserChanged(_AuthenticationUserChanged value),
    @required TResult logoutRequested(_LogoutRequested value),
  }) {
    assert(started != null);
    assert(authenticationUserChanged != null);
    assert(logoutRequested != null);
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult authenticationUserChanged(_AuthenticationUserChanged value),
    TResult logoutRequested(_LogoutRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AuthEvent {
  const factory _LogoutRequested() = _$_LogoutRequested;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Unauthenticated unauthenticated() {
    return const _Unauthenticated();
  }

// ignore: unused_element
  _Authenticated authenticated(AuthUser user) {
    return _Authenticated(
      user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(AuthUser user),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(AuthUser user),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(AuthUser user),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(AuthUser user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;
}

/// @nodoc
class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(AuthUser user),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(AuthUser user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AuthUser user});

  $AuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed ? _value.user : user as AuthUser,
    ));
  }

  @override
  $AuthUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $AuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.user) : assert(user != null);

  @override
  final AuthUser user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticated &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult unauthenticated(),
    @required TResult authenticated(AuthUser user),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult unauthenticated(),
    TResult authenticated(AuthUser user),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult unauthenticated(_Unauthenticated value),
    @required TResult authenticated(_Authenticated value),
  }) {
    assert(initial != null);
    assert(unauthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult unauthenticated(_Unauthenticated value),
    TResult authenticated(_Authenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(AuthUser user) = _$_Authenticated;

  AuthUser get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith;
}
