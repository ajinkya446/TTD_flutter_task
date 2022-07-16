import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';

abstract class CharacterInfoRepository {
  /// Handling Functional error operation using Either while collecting the movies data from API
  Future<Either<Failure, CharacterModels>> getCharacterInformation(CharacterModels information);
}
