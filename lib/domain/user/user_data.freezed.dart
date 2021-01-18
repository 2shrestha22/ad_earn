// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call({@required int coin, @required String imageUrl}) {
    return _UserData(
      coin: coin,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  int get coin;
  String get imageUrl;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({int coin, String imageUrl});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object coin = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      coin: coin == freezed ? _value.coin : coin as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({int coin, String imageUrl});
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
    Object coin = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_UserData(
      coin: coin == freezed ? _value.coin : coin as int,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

/// @nodoc
class _$_UserData implements _UserData {
  const _$_UserData({@required this.coin, @required this.imageUrl})
      : assert(coin != null),
        assert(imageUrl != null);

  @override
  final int coin;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'UserData(coin: $coin, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.coin, coin) ||
                const DeepCollectionEquality().equals(other.coin, coin)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(coin) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData({@required int coin, @required String imageUrl}) =
      _$_UserData;

  @override
  int get coin;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith;
}
