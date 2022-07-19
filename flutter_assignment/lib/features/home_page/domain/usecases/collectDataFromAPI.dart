import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CollectDataFromAPI implements UseCase<StarWarMoviesModel, MovieListParams> {
  final StarWarsRepository starWarsRepository;

  CollectDataFromAPI(this.starWarsRepository);

  @override
  Future<Either<Failure, StarWarMoviesModel>> call(MovieListParams params) async => await starWarsRepository.collectMoviesListFromAPI(params.url);
}

/// This class collects the parameter as URL to fetch data from online
class MovieListParams {
  final String url;

  MovieListParams({required this.url});
}
