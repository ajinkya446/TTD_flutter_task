import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:injectable/injectable.dart';

import '../repository/character_repository.dart';

@LazySingleton()
class CharacterUseCase implements UseCase<List<CharacterModels>, Params> {
  final CharactersRepository repository;

  CharacterUseCase(this.repository);

  @override
  Future<Either<Failure, List<CharacterModels>>> call(Params params) async => await repository.getAllCharacters(params.characters, params.id);
}

class Params {
  final List<String> characters;
  final int id;

  Params({required this.characters, required this.id});
}
