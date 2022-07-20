// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'star_war_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StarWarMoviesModel _$StarWarMoviesModelFromJson(Map<String, dynamic> json) {
  return _StarWarMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$StarWarMoviesModel {
  int get count => throw _privateConstructorUsedError;
  List<Results> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarWarMoviesModelCopyWith<StarWarMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarMoviesModelCopyWith<$Res> {
  factory $StarWarMoviesModelCopyWith(
          StarWarMoviesModel value, $Res Function(StarWarMoviesModel) then) =
      _$StarWarMoviesModelCopyWithImpl<$Res>;
  $Res call({int count, List<Results> results});
}

/// @nodoc
class _$StarWarMoviesModelCopyWithImpl<$Res>
    implements $StarWarMoviesModelCopyWith<$Res> {
  _$StarWarMoviesModelCopyWithImpl(this._value, this._then);

  final StarWarMoviesModel _value;
  // ignore: unused_field
  final $Res Function(StarWarMoviesModel) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
abstract class _$$_StarWarMoviesModelCopyWith<$Res>
    implements $StarWarMoviesModelCopyWith<$Res> {
  factory _$$_StarWarMoviesModelCopyWith(_$_StarWarMoviesModel value,
          $Res Function(_$_StarWarMoviesModel) then) =
      __$$_StarWarMoviesModelCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<Results> results});
}

/// @nodoc
class __$$_StarWarMoviesModelCopyWithImpl<$Res>
    extends _$StarWarMoviesModelCopyWithImpl<$Res>
    implements _$$_StarWarMoviesModelCopyWith<$Res> {
  __$$_StarWarMoviesModelCopyWithImpl(
      _$_StarWarMoviesModel _value, $Res Function(_$_StarWarMoviesModel) _then)
      : super(_value, (v) => _then(v as _$_StarWarMoviesModel));

  @override
  _$_StarWarMoviesModel get _value => super._value as _$_StarWarMoviesModel;

  @override
  $Res call({
    Object? count = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_StarWarMoviesModel(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Results>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarWarMoviesModel implements _StarWarMoviesModel {
  const _$_StarWarMoviesModel(
      {required this.count, required final List<Results> results})
      : _results = results;

  factory _$_StarWarMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_StarWarMoviesModelFromJson(json);

  @override
  final int count;
  final List<Results> _results;
  @override
  List<Results> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'StarWarMoviesModel(count: $count, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarWarMoviesModel &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_StarWarMoviesModelCopyWith<_$_StarWarMoviesModel> get copyWith =>
      __$$_StarWarMoviesModelCopyWithImpl<_$_StarWarMoviesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarWarMoviesModelToJson(this);
  }
}

abstract class _StarWarMoviesModel implements StarWarMoviesModel {
  const factory _StarWarMoviesModel(
      {required final int count,
      required final List<Results> results}) = _$_StarWarMoviesModel;

  factory _StarWarMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_StarWarMoviesModel.fromJson;

  @override
  int get count => throw _privateConstructorUsedError;
  @override
  List<Results> get results => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StarWarMoviesModelCopyWith<_$_StarWarMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
