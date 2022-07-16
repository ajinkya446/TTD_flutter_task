import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';

import '../../../../core/error/failure.dart';
import '../../../character_page/data/models/character_model.dart';

abstract class CharactersInfoRemoteDatasource {
  Future<Either<Failure, CharacterModels>> fetchCharactersMovies(CharacterModels characters);
}

class CharacterInfoSourceImpl implements CharactersInfoRemoteDatasource {
  /// This Function helps to collect Characters data
  @override
  Future<Either<Failure, CharacterModels>> fetchCharactersMovies(CharacterModels characters) async {
    // Checking the API and collect the response by converting json
    try {
      return Right(characters);
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }
}
