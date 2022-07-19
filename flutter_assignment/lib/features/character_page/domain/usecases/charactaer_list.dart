import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/usecase/usecase.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:injectable/injectable.dart';

import '../repository/character_repository.dart';

@LazySingleton()
class CharacterUseCase implements UseCase<List<CharacterModels>, CharacterUsecaseParams> {
  final CharactersRepository repository;

  CharacterUseCase(this.repository);

  @override
  Future<Either<Failure, List<CharacterModels>>> call(CharacterUsecaseParams params) async => await repository.getAllCharacters(params.characters, params.id);
}

class CharacterUsecaseParams {
  final List<String> characters;
  final int id;

  CharacterUsecaseParams({required this.characters, required this.id});
}
