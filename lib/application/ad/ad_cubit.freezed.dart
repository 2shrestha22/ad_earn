// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ad_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AdStateTearOff {
  const _$AdStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _AdLoadInProgress adLoadInProgress() {
    return const _AdLoadInProgress();
  }
}

/// @nodoc
// ignore: unused_element
const $AdState = _$AdStateTearOff();

/// @nodoc
mixin _$AdState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult adLoadInProgress(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult adLoadInProgress(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult adLoadInProgress(_AdLoadInProgress value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult adLoadInProgress(_AdLoadInProgress value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AdStateCopyWith<$Res> {
  factory $AdStateCopyWith(AdState value, $Res Function(AdState) then) =
      _$AdStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdStateCopyWithImpl<$Res> implements $AdStateCopyWith<$Res> {
  _$AdStateCopyWithImpl(this._value, this._then);

  final AdState _value;
  // ignore: unused_field
  final $Res Function(AdState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
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
    return 'AdState.initial()';
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
    @required TResult adLoadInProgress(),
  }) {
    assert(initial != null);
    assert(adLoadInProgress != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult adLoadInProgress(),
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
    @required TResult adLoadInProgress(_AdLoadInProgress value),
  }) {
    assert(initial != null);
    assert(adLoadInProgress != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult adLoadInProgress(_AdLoadInProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AdState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$AdLoadInProgressCopyWith<$Res> {
  factory _$AdLoadInProgressCopyWith(
          _AdLoadInProgress value, $Res Function(_AdLoadInProgress) then) =
      __$AdLoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$AdLoadInProgressCopyWithImpl<$Res> extends _$AdStateCopyWithImpl<$Res>
    implements _$AdLoadInProgressCopyWith<$Res> {
  __$AdLoadInProgressCopyWithImpl(
      _AdLoadInProgress _value, $Res Function(_AdLoadInProgress) _then)
      : super(_value, (v) => _then(v as _AdLoadInProgress));

  @override
  _AdLoadInProgress get _value => super._value as _AdLoadInProgress;
}

/// @nodoc
class _$_AdLoadInProgress implements _AdLoadInProgress {
  const _$_AdLoadInProgress();

  @override
  String toString() {
    return 'AdState.adLoadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdLoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult adLoadInProgress(),
  }) {
    assert(initial != null);
    assert(adLoadInProgress != null);
    return adLoadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult adLoadInProgress(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (adLoadInProgress != null) {
      return adLoadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult adLoadInProgress(_AdLoadInProgress value),
  }) {
    assert(initial != null);
    assert(adLoadInProgress != null);
    return adLoadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult adLoadInProgress(_AdLoadInProgress value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (adLoadInProgress != null) {
      return adLoadInProgress(this);
    }
    return orElse();
  }
}

abstract class _AdLoadInProgress implements AdState {
  const factory _AdLoadInProgress() = _$_AdLoadInProgress;
}
