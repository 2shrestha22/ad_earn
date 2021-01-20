// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@required String uid,
      @required String email,
      @required String displayName,
      @required String photoUrl,
      @required int coin}) {
    return _UserData(
      uid: uid,
      email: email,
      displayName: displayName,
      photoUrl: photoUrl,
      coin: coin,
    );
  }

// ignore: unused_element
  UserData fromJson(Map<String, Object> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String get uid;
  String get email;
  String get displayName;
  String get photoUrl;
  int get coin;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String email,
      String displayName,
      String photoUrl,
      int coin});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
    Object displayName = freezed,
    Object photoUrl = freezed,
    Object coin = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      coin: coin == freezed ? _value.coin : coin as int,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String email,
      String displayName,
      String photoUrl,
      int coin});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object uid = freezed,
    Object email = freezed,
    Object displayName = freezed,
    Object photoUrl = freezed,
    Object coin = freezed,
  }) {
    return _then(_UserData(
      uid: uid == freezed ? _value.uid : uid as String,
      email: email == freezed ? _value.email : email as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      coin: coin == freezed ? _value.coin : coin as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserData implements _UserData {
  const _$_UserData(
      {@required this.uid,
      @required this.email,
      @required this.displayName,
      @required this.photoUrl,
      @required this.coin})
      : assert(uid != null),
        assert(email != null),
        assert(displayName != null),
        assert(photoUrl != null),
        assert(coin != null);

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final int coin;

  @override
  String toString() {
    return 'UserData(uid: $uid, email: $email, displayName: $displayName, photoUrl: $photoUrl, coin: $coin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.coin, coin) ||
                const DeepCollectionEquality().equals(other.coin, coin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(coin);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {@required String uid,
      @required String email,
      @required String displayName,
      @required String photoUrl,
      @required int coin}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String get photoUrl;
  @override
  int get coin;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith;
}
