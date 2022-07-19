// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieListState _$MovieListStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _MovieListState.fromJson(json);
    case 'Empty':
      return _MovieListStateEmpty.fromJson(json);
    case 'Error':
      return _MovieListStateError.fromJson(json);
    case 'Loaded':
      return _MovieListStateListReceived.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MovieListState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MovieListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Empty,
    required TResult Function() Error,
    required TResult Function(StarWarMoviesModel response) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MovieListState value) $default, {
    required TResult Function(_MovieListStateEmpty value) Empty,
    required TResult Function(_MovieListStateError value) Error,
    required TResult Function(_MovieListStateListReceived value) Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(
          MovieListState value, $Res Function(MovieListState) then) =
      _$MovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._value, this._then);

  final MovieListState _value;
  // ignore: unused_field
  final $Res Function(MovieListState) _then;
}

/// @nodoc
abstract class _$$_MovieListStateCopyWith<$Res> {
  factory _$$_MovieListStateCopyWith(
          _$_MovieListState value, $Res Function(_$_MovieListState) then) =
      __$$_MovieListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieListStateCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements _$$_MovieListStateCopyWith<$Res> {
  __$$_MovieListStateCopyWithImpl(
      _$_MovieListState _value, $Res Function(_$_MovieListState) _then)
      : super(_value, (v) => _then(v as _$_MovieListState));

  @override
  _$_MovieListState get _value => super._value as _$_MovieListState;
}

/// @nodoc
@JsonSerializable()
class _$_MovieListState implements _MovieListState {
  const _$_MovieListState({final String? $type}) : $type = $type ?? 'default';

  factory _$_MovieListState.fromJson(Map<String, dynamic> json) =>
      _$$_MovieListStateFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MovieListState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieListState);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Empty,
    required TResult Function() Error,
    required TResult Function(StarWarMoviesModel response) Loaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
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
    TResult Function(_MovieListState value) $default, {
    required TResult Function(_MovieListStateEmpty value) Empty,
    required TResult Function(_MovieListStateError value) Error,
    required TResult Function(_MovieListStateListReceived value) Loaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieListStateToJson(this);
  }
}

abstract class _MovieListState implements MovieListState {
  const factory _MovieListState() = _$_MovieListState;

  factory _MovieListState.fromJson(Map<String, dynamic> json) =
      _$_MovieListState.fromJson;
}

/// @nodoc
abstract class _$$_MovieListStateEmptyCopyWith<$Res> {
  factory _$$_MovieListStateEmptyCopyWith(_$_MovieListStateEmpty value,
          $Res Function(_$_MovieListStateEmpty) then) =
      __$$_MovieListStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieListStateEmptyCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements _$$_MovieListStateEmptyCopyWith<$Res> {
  __$$_MovieListStateEmptyCopyWithImpl(_$_MovieListStateEmpty _value,
      $Res Function(_$_MovieListStateEmpty) _then)
      : super(_value, (v) => _then(v as _$_MovieListStateEmpty));

  @override
  _$_MovieListStateEmpty get _value => super._value as _$_MovieListStateEmpty;
}

/// @nodoc
@JsonSerializable()
class _$_MovieListStateEmpty implements _MovieListStateEmpty {
  const _$_MovieListStateEmpty({final String? $type})
      : $type = $type ?? 'Empty';

  factory _$_MovieListStateEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_MovieListStateEmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MovieListState.Empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieListStateEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Empty,
    required TResult Function() Error,
    required TResult Function(StarWarMoviesModel response) Loaded,
  }) {
    return Empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
  }) {
    return Empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
    required TResult orElse(),
  }) {
    if (Empty != null) {
      return Empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MovieListState value) $default, {
    required TResult Function(_MovieListStateEmpty value) Empty,
    required TResult Function(_MovieListStateError value) Error,
    required TResult Function(_MovieListStateListReceived value) Loaded,
  }) {
    return Empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
  }) {
    return Empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Empty != null) {
      return Empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieListStateEmptyToJson(this);
  }
}

abstract class _MovieListStateEmpty implements MovieListState {
  const factory _MovieListStateEmpty() = _$_MovieListStateEmpty;

  factory _MovieListStateEmpty.fromJson(Map<String, dynamic> json) =
      _$_MovieListStateEmpty.fromJson;
}

/// @nodoc
abstract class _$$_MovieListStateErrorCopyWith<$Res> {
  factory _$$_MovieListStateErrorCopyWith(_$_MovieListStateError value,
          $Res Function(_$_MovieListStateError) then) =
      __$$_MovieListStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieListStateErrorCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements _$$_MovieListStateErrorCopyWith<$Res> {
  __$$_MovieListStateErrorCopyWithImpl(_$_MovieListStateError _value,
      $Res Function(_$_MovieListStateError) _then)
      : super(_value, (v) => _then(v as _$_MovieListStateError));

  @override
  _$_MovieListStateError get _value => super._value as _$_MovieListStateError;
}

/// @nodoc
@JsonSerializable()
class _$_MovieListStateError implements _MovieListStateError {
  const _$_MovieListStateError({final String? $type})
      : $type = $type ?? 'Error';

  factory _$_MovieListStateError.fromJson(Map<String, dynamic> json) =>
      _$$_MovieListStateErrorFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MovieListState.Error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieListStateError);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Empty,
    required TResult Function() Error,
    required TResult Function(StarWarMoviesModel response) Loaded,
  }) {
    return Error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
  }) {
    return Error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
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
    TResult Function(_MovieListState value) $default, {
    required TResult Function(_MovieListStateEmpty value) Empty,
    required TResult Function(_MovieListStateError value) Error,
    required TResult Function(_MovieListStateListReceived value) Loaded,
  }) {
    return Error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
  }) {
    return Error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Error != null) {
      return Error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieListStateErrorToJson(this);
  }
}

abstract class _MovieListStateError implements MovieListState {
  const factory _MovieListStateError() = _$_MovieListStateError;

  factory _MovieListStateError.fromJson(Map<String, dynamic> json) =
      _$_MovieListStateError.fromJson;
}

/// @nodoc
abstract class _$$_MovieListStateListReceivedCopyWith<$Res> {
  factory _$$_MovieListStateListReceivedCopyWith(
          _$_MovieListStateListReceived value,
          $Res Function(_$_MovieListStateListReceived) then) =
      __$$_MovieListStateListReceivedCopyWithImpl<$Res>;
  $Res call({StarWarMoviesModel response});

  $StarWarMoviesModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$_MovieListStateListReceivedCopyWithImpl<$Res>
    extends _$MovieListStateCopyWithImpl<$Res>
    implements _$$_MovieListStateListReceivedCopyWith<$Res> {
  __$$_MovieListStateListReceivedCopyWithImpl(
      _$_MovieListStateListReceived _value,
      $Res Function(_$_MovieListStateListReceived) _then)
      : super(_value, (v) => _then(v as _$_MovieListStateListReceived));

  @override
  _$_MovieListStateListReceived get _value =>
      super._value as _$_MovieListStateListReceived;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_MovieListStateListReceived(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StarWarMoviesModel,
    ));
  }

  @override
  $StarWarMoviesModelCopyWith<$Res> get response {
    return $StarWarMoviesModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieListStateListReceived implements _MovieListStateListReceived {
  const _$_MovieListStateListReceived(this.response, {final String? $type})
      : $type = $type ?? 'Loaded';

  factory _$_MovieListStateListReceived.fromJson(Map<String, dynamic> json) =>
      _$$_MovieListStateListReceivedFromJson(json);

  @override
  final StarWarMoviesModel response;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MovieListState.Loaded(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieListStateListReceived &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_MovieListStateListReceivedCopyWith<_$_MovieListStateListReceived>
      get copyWith => __$$_MovieListStateListReceivedCopyWithImpl<
          _$_MovieListStateListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() Empty,
    required TResult Function() Error,
    required TResult Function(StarWarMoviesModel response) Loaded,
  }) {
    return Loaded(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
  }) {
    return Loaded?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? Empty,
    TResult Function()? Error,
    TResult Function(StarWarMoviesModel response)? Loaded,
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
    TResult Function(_MovieListState value) $default, {
    required TResult Function(_MovieListStateEmpty value) Empty,
    required TResult Function(_MovieListStateError value) Error,
    required TResult Function(_MovieListStateListReceived value) Loaded,
  }) {
    return Loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
  }) {
    return Loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MovieListState value)? $default, {
    TResult Function(_MovieListStateEmpty value)? Empty,
    TResult Function(_MovieListStateError value)? Error,
    TResult Function(_MovieListStateListReceived value)? Loaded,
    required TResult orElse(),
  }) {
    if (Loaded != null) {
      return Loaded(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieListStateListReceivedToJson(this);
  }
}

abstract class _MovieListStateListReceived implements MovieListState {
  const factory _MovieListStateListReceived(final StarWarMoviesModel response) =
      _$_MovieListStateListReceived;

  factory _MovieListStateListReceived.fromJson(Map<String, dynamic> json) =
      _$_MovieListStateListReceived.fromJson;

  StarWarMoviesModel get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$$_MovieListStateListReceivedCopyWith<_$_MovieListStateListReceived> get copyWith => throw _privateConstructorUsedError;
}
