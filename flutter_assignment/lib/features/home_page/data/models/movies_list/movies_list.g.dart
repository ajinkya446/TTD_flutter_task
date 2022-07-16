// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      json['title'] as String,
      json['episode_id'] as int,
      json['opening_crawl'] as String,
      json['director'] as String,
      json['producer'] as String,
      json['release_date'] as String,
      (json['characters'] as List<dynamic>).map((e) => e as String).toList(),
      (json['planets'] as List<dynamic>).map((e) => e as String).toList(),
      (json['starships'] as List<dynamic>).map((e) => e as String).toList(),
      (json['vehicles'] as List<dynamic>).map((e) => e as String).toList(),
      (json['species'] as List<dynamic>).map((e) => e as String).toList(),
      json['created'] as String,
      json['edited'] as String,
      json['url'] as String,
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'title': instance.title,
      'episode_id': instance.episode_id,
      'opening_crawl': instance.opening_crawl,
      'director': instance.director,
      'producer': instance.producer,
      'release_date': instance.release_date,
      'characters': instance.characters,
      'planets': instance.planets,
      'starships': instance.starships,
      'vehicles': instance.vehicles,
      'species': instance.species,
      'created': instance.created,
      'edited': instance.edited,
      'url': instance.url,
    };
