// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

// ignore: unused_element
  _AppUser call(
      {@required String userId,
      @required String email,
      @required String name,
      @required String photoUrl}) {
    return _AppUser(
      userId: userId,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get userId;
  String get email;
  String get name;
  String get photoUrl;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({String userId, String email, String name, String photoUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object email = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call({String userId, String email, String name, String photoUrl});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object userId = freezed,
    Object email = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_AppUser(
      userId: userId == freezed ? _value.userId : userId as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {@required this.userId,
      @required this.email,
      @required this.name,
      @required this.photoUrl})
      : assert(userId != null),
        assert(email != null),
        assert(name != null),
        assert(photoUrl != null);

  @override
  final String userId;
  @override
  final String email;
  @override
  final String name;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'AppUser(userId: $userId, email: $email, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl);

  @JsonKey(ignore: true)
  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {@required String userId,
      @required String email,
      @required String name,
      @required String photoUrl}) = _$_AppUser;

  @override
  String get userId;
  @override
  String get email;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$AppUserCopyWith<_AppUser> get copyWith;
}
