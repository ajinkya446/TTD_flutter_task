import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';

abstract class CharactersRepository {
  /// Handling Functional error operation using Either while collecting the movies data from API
  Future<Either<Failure, List<CharacterModels>>> getAllCharacters(List<String> characters);
}
