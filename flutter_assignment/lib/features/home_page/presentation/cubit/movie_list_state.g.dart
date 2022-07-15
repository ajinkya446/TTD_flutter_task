// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieListState _$$_MovieListStateFromJson(Map<String, dynamic> json) =>
    _$_MovieListState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MovieListStateToJson(_$_MovieListState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_MovieListStateEmpty _$$_MovieListStateEmptyFromJson(
        Map<String, dynamic> json) =>
    _$_MovieListStateEmpty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MovieListStateEmptyToJson(
        _$_MovieListStateEmpty instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_MovieListStateError _$$_MovieListStateErrorFromJson(
        Map<String, dynamic> json) =>
    _$_MovieListStateError(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MovieListStateErrorToJson(
        _$_MovieListStateError instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_MovieListStateListReceived _$$_MovieListStateListReceivedFromJson(
        Map<String, dynamic> json) =>
    _$_MovieListStateListReceived(
      StarWarMoviesModel.fromJson(json['response'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MovieListStateListReceivedToJson(
        _$_MovieListStateListReceived instance) =>
    <String, dynamic>{
      'response': instance.response,
      'runtimeType': instance.$type,
    };
