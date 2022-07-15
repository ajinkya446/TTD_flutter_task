import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/failure.dart';

abstract class MoviesRemoteDatasource {
  /// Calls the API endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url);
}

class RemoteDataSourceImpl implements MoviesRemoteDatasource {
  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  /// This Function helps to collect movies data from the swapi.dev/films API
  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url) async {
    // TODO: implement collectMoviesListFromAPI
    StarWarMoviesModel? model;
    // Checking the API and collect the response by converting json
    final response = await client.get(Uri.parse(url), headers: {'Content-type': 'application/json'});
    try {
      if (response.statusCode == 200) {
        model = StarWarMoviesModel.fromJson(json.decode(response.body));
        return Right(model);
      } else {
        return Left(ServerFailure(Constants.serverFailureMessage));
      }
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }
}
