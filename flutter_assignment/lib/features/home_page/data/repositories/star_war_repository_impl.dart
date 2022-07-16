import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:injectable/injectable.dart';

import '../datasource/movies_remote_datasource.dart';
import '../models/star_war_model.dart';

@LazySingleton(as: StarWarsRepository)
class StarWarsRepositoryImpl implements StarWarsRepository {
  final MoviesRemoteDatasource remoteDatasource;

  StarWarsRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url) async {
    // TODO: implement collectMoviesListFromAPI i.e fetching data from API
    try {
      final response = await remoteDatasource.collectMoviesListFromAPI(Constants.url);
      return response;
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

// @override
// Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromLocal() async {
//   // TODO: implement collectMoviesListFromLocal i.e from local database(SQFLite)
//   return await _getDataSource(() => remoteDatasource.collectMoviesListFromLocal());
// }

// Future<Either<Failure, StarWarMoviesModel>> _getDataSource(LoadDatasource call) async {
//   if (await networkInfo.isConnected) {
//     try {
//       final remoteData = await call();
//       localDatasource.cacheMoviesList(remoteData);
//       return Right(remoteData);
//     } on ServerExceptions {
//       return Left(ServerFailure(Constants.serverFailureMessage));
//     }
//   } else {
//     try {
//       final localData = await localDatasource.getMoviesFromLocal();
//       return Right(localData);
//     } on CacheExceptions {
//       return Left(CacheFailure(Constants.cacheFailureMessage));
//     }
//   }
// }
}
