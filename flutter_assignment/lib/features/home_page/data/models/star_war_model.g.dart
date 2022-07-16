// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'star_war_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StarWarMoviesModel _$$_StarWarMoviesModelFromJson(
        Map<String, dynamic> json) =>
    _$_StarWarMoviesModel(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StarWarMoviesModelToJson(
        _$_StarWarMoviesModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
