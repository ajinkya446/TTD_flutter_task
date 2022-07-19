// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterListState _$CharacterListStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _CharacterListState.fromJson(json);
    case 'Init':
      return _CharacterListStateEmpty.fromJson(json);
    case 'Error':
      return _CharacterListStateError.fromJson(json);
    case 'Loaded':
      return _CharacterListStateListReceived.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CharacterListState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CharacterListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Init,
    required TResult Function() Error,
    required TResult Function(List<CharacterModels> response) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterListState value) $default, {
    required TResult Function(_CharacterListStateEmpty value) Init,
    required TResult Function(_CharacterListStateError value) Error,
    required TResult Function(_CharacterListStateListReceived value) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterListStateCopyWith<$Res> {
  factory $CharacterListStateCopyWith(
          CharacterListState value, $Res Function(CharacterListState) then) =
      _$CharacterListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterListStateCopyWithImpl<$Res>
    implements $CharacterListStateCopyWith<$Res> {
  _$CharacterListStateCopyWithImpl(this._value, this._then);

  final CharacterListState _value;
  // ignore: unused_field
  final $Res Function(CharacterListState) _then;
}

/// @nodoc
abstract class _$$_CharacterListStateCopyWith<$Res> {
  factory _$$_CharacterListStateCopyWith(_$_CharacterListState value,
          $Res Function(_$_CharacterListState) then) =
      __$$_CharacterListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterListStateCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$$_CharacterListStateCopyWith<$Res> {
  __$$_CharacterListStateCopyWithImpl(
      _$_CharacterListState _value, $Res Function(_$_CharacterListState) _then)
      : super(_value, (v) => _then(v as _$_CharacterListState));

  @override
  _$_CharacterListState get _value => super._value as _$_CharacterListState;
}

/// @nodoc
@JsonSerializable()
class _$_CharacterListState implements _CharacterListState {
  const _$_CharacterListState({final String? $type})
      : $type = $type ?? 'default';

  factory _$_CharacterListState.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterListStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterListState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CharacterListState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Init,
    required TResult Function() Error,
    required TResult Function(List<CharacterModels> response) Loaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterListState value) $default, {
    required TResult Function(_CharacterListStateEmpty value) Init,
    required TResult Function(_CharacterListStateError value) Error,
    required TResult Function(_CharacterListStateListReceived value) Loaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterListStateToJson(this);
  }
}

abstract class _CharacterListState implements CharacterListState {
  const factory _CharacterListState() = _$_CharacterListState;

  factory _CharacterListState.fromJson(Map<String, dynamic> json) =
      _$_CharacterListState.fromJson;
}

/// @nodoc
abstract class _$$_CharacterListStateEmptyCopyWith<$Res> {
  factory _$$_CharacterListStateEmptyCopyWith(_$_CharacterListStateEmpty value,
          $Res Function(_$_CharacterListStateEmpty) then) =
      __$$_CharacterListStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterListStateEmptyCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$$_CharacterListStateEmptyCopyWith<$Res> {
  __$$_CharacterListStateEmptyCopyWithImpl(_$_CharacterListStateEmpty _value,
      $Res Function(_$_CharacterListStateEmpty) _then)
      : super(_value, (v) => _then(v as _$_CharacterListStateEmpty));

  @override
  _$_CharacterListStateEmpty get _value =>
      super._value as _$_CharacterListStateEmpty;
}

/// @nodoc
@JsonSerializable()
class _$_CharacterListStateEmpty implements _CharacterListStateEmpty {
  const _$_CharacterListStateEmpty({final String? $type})
      : $type = $type ?? 'Init';

  factory _$_CharacterListStateEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterListStateEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterListState.Init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListStateEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Init,
    required TResult Function() Error,
    required TResult Function(List<CharacterModels> response) Loaded,
  }) {
    return Init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
  }) {
    return Init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
    required TResult orElse(),
  }) {
    if (Init != null) {
      return Init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterListState value) $default, {
    required TResult Function(_CharacterListStateEmpty value) Init,
    required TResult Function(_CharacterListStateError value) Error,
    required TResult Function(_CharacterListStateListReceived value) Loaded,
  }) {
    return Init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
  }) {
    return Init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Init != null) {
      return Init(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterListStateEmptyToJson(this);
  }
}

abstract class _CharacterListStateEmpty implements CharacterListState {
  const factory _CharacterListStateEmpty() = _$_CharacterListStateEmpty;

  factory _CharacterListStateEmpty.fromJson(Map<String, dynamic> json) =
      _$_CharacterListStateEmpty.fromJson;
}

/// @nodoc
abstract class _$$_CharacterListStateErrorCopyWith<$Res> {
  factory _$$_CharacterListStateErrorCopyWith(_$_CharacterListStateError value,
          $Res Function(_$_CharacterListStateError) then) =
      __$$_CharacterListStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterListStateErrorCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$$_CharacterListStateErrorCopyWith<$Res> {
  __$$_CharacterListStateErrorCopyWithImpl(_$_CharacterListStateError _value,
      $Res Function(_$_CharacterListStateError) _then)
      : super(_value, (v) => _then(v as _$_CharacterListStateError));

  @override
  _$_CharacterListStateError get _value =>
      super._value as _$_CharacterListStateError;
}

/// @nodoc
@JsonSerializable()
class _$_CharacterListStateError implements _CharacterListStateError {
  const _$_CharacterListStateError({final String? $type})
      : $type = $type ?? 'Error';

  factory _$_CharacterListStateError.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterListStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterListState.Error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListStateError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Init,
    required TResult Function() Error,
    required TResult Function(List<CharacterModels> response) Loaded,
  }) {
    return Error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
  }) {
    return Error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterListState value) $default, {
    required TResult Function(_CharacterListStateEmpty value) Init,
    required TResult Function(_CharacterListStateError value) Error,
    required TResult Function(_CharacterListStateListReceived value) Loaded,
  }) {
    return Error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
  }) {
    return Error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterListStateErrorToJson(this);
  }
}

abstract class _CharacterListStateError implements CharacterListState {
  const factory _CharacterListStateError() = _$_CharacterListStateError;

  factory _CharacterListStateError.fromJson(Map<String, dynamic> json) =
      _$_CharacterListStateError.fromJson;
}

/// @nodoc
abstract class _$$_CharacterListStateListReceivedCopyWith<$Res> {
  factory _$$_CharacterListStateListReceivedCopyWith(
          _$_CharacterListStateListReceived value,
          $Res Function(_$_CharacterListStateListReceived) then) =
      __$$_CharacterListStateListReceivedCopyWithImpl<$Res>;
  $Res call({List<CharacterModels> response});
}

/// @nodoc
class __$$_CharacterListStateListReceivedCopyWithImpl<$Res>
    extends _$CharacterListStateCopyWithImpl<$Res>
    implements _$$_CharacterListStateListReceivedCopyWith<$Res> {
  __$$_CharacterListStateListReceivedCopyWithImpl(
      _$_CharacterListStateListReceived _value,
      $Res Function(_$_CharacterListStateListReceived) _then)
      : super(_value, (v) => _then(v as _$_CharacterListStateListReceived));

  @override
  _$_CharacterListStateListReceived get _value =>
      super._value as _$_CharacterListStateListReceived;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_CharacterListStateListReceived(
      response == freezed
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<CharacterModels>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterListStateListReceived
    implements _CharacterListStateListReceived {
  const _$_CharacterListStateListReceived(final List<CharacterModels> response,
      {final String? $type})
      : _response = response,
        $type = $type ?? 'Loaded';

  factory _$_CharacterListStateListReceived.fromJson(
          Map<String, dynamic> json) =>
      _$$_CharacterListStateListReceivedFromJson(json);

  final List<CharacterModels> _response;
  @override
  List<CharacterModels> get response {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CharacterListState.Loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterListStateListReceived &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterListStateListReceivedCopyWith<_$_CharacterListStateListReceived>
      get copyWith => __$$_CharacterListStateListReceivedCopyWithImpl<
          _$_CharacterListStateListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Init,
    required TResult Function() Error,
    required TResult Function(List<CharacterModels> response) Loaded,
  }) {
    return Loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
  }) {
    return Loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Init,
    TResult Function()? Error,
    TResult Function(List<CharacterModels> response)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CharacterListState value) $default, {
    required TResult Function(_CharacterListStateEmpty value) Init,
    required TResult Function(_CharacterListStateError value) Error,
    required TResult Function(_CharacterListStateListReceived value) Loaded,
  }) {
    return Loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
  }) {
    return Loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CharacterListState value)? $default, {
    TResult Function(_CharacterListStateEmpty value)? Init,
    TResult Function(_CharacterListStateError value)? Error,
    TResult Function(_CharacterListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterListStateListReceivedToJson(this);
  }
}

abstract class _CharacterListStateListReceived implements CharacterListState {
  const factory _CharacterListStateListReceived(
      final List<CharacterModels> response) = _$_CharacterListStateListReceived;

  factory _CharacterListStateListReceived.fromJson(Map<String, dynamic> json) =
      _$_CharacterListStateListReceived.fromJson;

  List<CharacterModels> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$_CharacterListStateListReceivedCopyWith<_$_CharacterListStateListReceived> get copyWith => throw _privateConstructorUsedError;
}
