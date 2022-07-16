import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:injectable/injectable.dart';

import '../repository/character_info_repository.dart';

@LazySingleton()
class CharacterInfoUseCase implements UseCase<CharacterModels, Params> {
  final CharacterInfoRepository repository;

  CharacterInfoUseCase(this.repository);

  @override
  Future<Either<Failure, CharacterModels>> call(Params params) async => await repository.getCharacterInformation(params.characters);
}

class Params {
  final CharacterModels characters;

  Params({required this.characters});
}
