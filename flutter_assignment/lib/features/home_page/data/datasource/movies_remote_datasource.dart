import 'dart:convert';

import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:http/http.dart' as http;

abstract class MoviesRemoteDatasource {
  /// Calls the Local endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  // Future<StarWarMoviesModel> collectMoviesListFromLocal();

  /// Calls the API endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  Future<StarWarMoviesModel> collectMoviesListFromAPI(String url);
}

class RemoteDataSourceImpl implements MoviesRemoteDatasource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<StarWarMoviesModel> collectMoviesListFromAPI(String url) async {
    // TODO: implement collectMoviesListFromAPI
    StarWarMoviesModel? model;
    final response = await client.get(Uri.parse(url), headers: {'Content-type': 'application/json'});
    if (response.statusCode == 200) {
      model = StarWarMoviesModel.fromJson(jsonDecode(response.body));
      return model;
    } else {
      throw ServerExceptions("404 Server Error");
    }
  }

  @override
  Future<StarWarMoviesModel> collectMoviesListFromLocal() {
    // TODO: implement collectMoviesListFromLocal
    throw UnimplementedError();
  }
}
