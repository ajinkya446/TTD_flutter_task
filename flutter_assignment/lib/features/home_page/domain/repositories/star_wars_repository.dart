import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/entities/number_trivia.dart';
import 'package:injectable/injectable.dart';
// @injectable
abstract class StarWarsRepository {
  /// Handling Functional error operation using Either while collecting the movies data from local storage
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromLocal();

  /// Handling Functional error operation using Either while collecting the movies data from API
  Future<Either<Failure, StarWarMoviesModel>> collectMoviesListFromAPI(String url);
}

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int? number);

  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
