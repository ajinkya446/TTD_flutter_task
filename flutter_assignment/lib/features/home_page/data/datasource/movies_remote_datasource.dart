import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/models/movies_list/movies_list.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/failure.dart';
import '../../../../core/storage/star_war_database.dart';

abstract class MoviesRemoteDatasource {
  /// Calls the API endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url);
}

class RemoteDataSourceImpl implements MoviesRemoteDatasource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  /// This Function helps to collect movies data from the swapi.dev/films API as well as Local database
  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url) async {
    // TODO: implement collectMoviesListFromAPI
    StarWarMoviesModel? model;
    // Checking the API and collect the response by converting json
    try {
      List<Map> moviesResult = await StarWarDatabase.instance.getAllMovies();
      if (moviesResult.isEmpty || moviesResult.length == 0) {
        final response = await client.get(Uri.parse(url), headers: {'Content-type': 'application/json'});
        if (response.statusCode == 200) {
          model = StarWarMoviesModel.fromJson(json.decode(response.body));

          /// Inserting data to local database tables
          var result = await StarWarDatabase.instance.insertDataToMovies(model);
          await StarWarDatabase.instance.insertDataResults(model);
          await StarWarDatabase.instance.insertDataCharacters(model);

          if (result >= 1) {
            return Right(model);
          } else {
            return Left(CacheFailure("Database Exception"));
          }
        } else {
          return Left(ServerFailure(Constants.serverFailureMessage));
        }
      } else {
        /// Collecting data from the local database
        List<Map> results = await StarWarDatabase.instance.getAllResults();
        // List<Map> resultsCharacters = await StarWarDatabase.instance.getAllCharacters();

        List<Results> mapResult = [];

        for (var resultRow in results) {
          mapResult.add(Results(resultRow['title'], resultRow['episode_id'], resultRow['opening_crawl'], resultRow['director'], resultRow['producer'], resultRow['release_date'], [], [], [], [], [],
              resultRow['created'], resultRow['edited'], resultRow['url']));
        }
        int countNumber = 0;
        for (var row in moviesResult) {
          countNumber = row["count"];
        }
        StarWarMoviesModel dbModel = StarWarMoviesModel(count: countNumber, results: mapResult);

        return Right(dbModel);
      }
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }
}
