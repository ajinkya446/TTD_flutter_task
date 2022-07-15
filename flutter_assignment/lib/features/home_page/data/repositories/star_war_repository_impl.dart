import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/network/network_info.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_local_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';

typedef LoadDatasource = Future<StarWarMoviesModel> Function();

class StarWarsRepositoryImpl implements StarWarsRepository {
  final MoviesRemoteDatasource remoteDatasource;
  final MoviesLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  StarWarsRepositoryImpl({required this.remoteDatasource, required this.localDatasource, required this.networkInfo});

  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url) async {
    // TODO: implement collectMoviesListFromAPI i.e fetching data from API
    return await _getDataSource(() => remoteDatasource.collectMoviesListFromAPI(url));
  }

  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromLocal() async {
    // TODO: implement collectMoviesListFromLocal i.e from local database(SQFLite)
    return await _getDataSource(() => remoteDatasource.collectMoviesListFromLocal());
  }

  Future<Either<Failure, StarWarMoviesModel>> _getDataSource(LoadDatasource call) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await call();
        localDatasource.cacheMoviesList(remoteData);
        return Right(remoteData);
      } on ServerExceptions {
        return Left(ServerFailure(Constants.serverFailureMessage));
      }
    } else {
      try {
        final localData = await localDatasource.getMoviesFromLocal();
        return Right(localData);
      } on CacheExceptions {
        return Left(CacheFailure(Constants.cacheFailureMessage));
      }
    }
  }
}
