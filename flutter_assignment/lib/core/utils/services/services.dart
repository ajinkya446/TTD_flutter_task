import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../constants/constants.dart';
import '../../../features/character_page/data/models/character_model.dart';
import '../../../features/home_page/data/models/star_war_model.dart';
import '../../error/exceptions.dart';
import '../../error/failure.dart';
import '../../storage/star_war_database.dart';

class APIServices {
  final client = http.Client();

  /// Fetching Characters API response from server.
  Future<CharacterModels> fetchAPIResponse(String url, int id) async {
    CharacterModels? model;
    try {
      final response = await client.get(Uri.parse(url), headers: {'Content-type': 'application/json'});
      if (response.statusCode == 200) {
        model = CharacterModels.fromJson(json.decode(response.body));
        await DatabaseHelper.instance.insertDataToCharacterInfo(CharacterModels.fromJson(json.decode(response.body)), id);
      }
    } catch (e) {
      throw ServerExceptions(Constants.serverFailureMessage);
    }
    return model!;
  }

  ///Fetching Movies list Response from the server
  Future<Either<Failure, StarWarMoviesModel>> fetchAllMovies(String url) async {
    final response = await client.get(Uri.parse(url), headers: {'Content-type': 'application/json'});
    try {
      if (response.statusCode == 200) {
        StarWarMoviesModel model = StarWarMoviesModel.fromJson(json.decode(response.body));

        /// Inserting data to local database tables
        var result = await DatabaseHelper.instance.insertDataToMovies(model);
        await DatabaseHelper.instance.insertDataResults(model);
        await DatabaseHelper.instance.insertDataCharacters(model);

        if (result >= 1) {
          return Right(model);
        } else {
          return Left(CacheFailure("Database Exception"));
        }
      } else {
        throw ServerExceptions(Constants.serverFailureMessage);
      }
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }
}
