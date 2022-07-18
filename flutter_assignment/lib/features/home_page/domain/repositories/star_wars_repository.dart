import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';

abstract class StarWarsRepository {
  /// Handling Functional error operation using Either while collecting the movies data from API
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url);

  Future<List<String>> getAllCharacters(int remoteId);
}
