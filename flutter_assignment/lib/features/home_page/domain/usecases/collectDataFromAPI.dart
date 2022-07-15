import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:injectable/injectable.dart';

// @injectable
@LazySingleton()
class CollectDataFromAPI implements UseCase<StarWarMoviesModel, Params> {
  final StarWarsRepository starWarsRepository;

  CollectDataFromAPI(this.starWarsRepository);

  @override
  Future<Either<Failure, StarWarMoviesModel>> call(Params params) async => await starWarsRepository.collectMoviesListFromAPI(params.url);
}

class Params {
  final String url;

  Params({required this.url});
}
