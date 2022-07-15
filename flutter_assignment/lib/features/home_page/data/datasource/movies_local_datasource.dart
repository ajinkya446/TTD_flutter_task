import 'dart:convert';

import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/entities/star_wars_movies_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

 abstract class MoviesLocalDatasource {
  /// Calls the Local database endpoint
  ///
  /// Throws [CacheExceptions] exception if error occurs
  Future<StarWarMoviesModel> getMoviesFromLocal();

  Future<void> cacheMoviesList(StarWarMovieEntity url);
}

class MovieLocalDatasourceImpl implements MoviesLocalDatasource {
  final SharedPreferences sharedPreferences;

  MovieLocalDatasourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheMoviesList(StarWarMovieEntity url) async {
    sharedPreferences.setString('cache_count', json.encode(StarWarMoviesModel(count: url.count, result: url.results).toJson()));
    // throw UnimplementedError();
  }

  @override
  Future<StarWarMoviesModel> getMoviesFromLocal() {
    // TODO: implement getMoviesFromLocal
    String? jsonString = sharedPreferences.getString('cache_count');
    if (jsonString != null || jsonString!.isNotEmpty) {
      return Future.value(StarWarMoviesModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheExceptions("No Cache Data Found");
    }
  }
}
