import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasource/local_data_source.dart';
import '../datasource/movies_remote_datasource.dart';
import '../models/star_war_model.dart';

@LazySingleton(as: StarWarsRepository)
class StarWarsRepositoryImpl implements StarWarsRepository {
  final MoviesRemoteDatasource remoteDatasource;
  final MoviesLocalDatasource localDatasource;

  StarWarsRepositoryImpl({required this.remoteDatasource, required this.localDatasource});

  /// Collecting the Movies list response from the API
  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url) async {
    try {
      final response = await remoteDatasource.collectMoviesListFromAPI(Constants.url);
      return response;
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }

  /// Getting all character information from the local database
  @override
  Future<List<String>> getAllCharacters(int remoteId) async {
    try {
      final response = await localDatasource.getCharacters(remoteId);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
