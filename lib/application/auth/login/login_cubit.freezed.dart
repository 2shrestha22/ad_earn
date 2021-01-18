// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@required Email email,
      @required Password password,
      @required FormzStatus status}) {
    return _LoginState(
      email: email,
      password: password,
      status: status,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Email get email;
  Password get password;
  FormzStatus get status;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({Email email, Password password, FormzStatus status});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object status = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      status: status == freezed ? _value.status : status as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({Email email, Password password, FormzStatus status});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object status = freezed,
  }) {
    return _then(_LoginState(
      email: email == freezed ? _value.email : email as Email,
      password: password == freezed ? _value.password : password as Password,
      status: status == freezed ? _value.status : status as FormzStatus,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {@required this.email, @required this.password, @required this.status})
      : assert(email != null),
        assert(password != null),
        assert(status != null);

  @override
  final Email email;
  @override
  final Password password;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {@required Email email,
      @required Password password,
      @required FormzStatus status}) = _$_LoginState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
