import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/character_page/data/datasource/character_remote_datasource.dart';
import 'package:flutter_assignment/features/character_page/domain/repository/character_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/character_model.dart';

@LazySingleton(as: CharactersRepository)
class CharacterRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDatasource remoteDatasource;

  CharacterRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, List<CharacterModels>>> getAllCharacters(List<String> characters) async {
    // TODO: implement collectMoviesListFromAPI i.e fetching data from API
    try {
      final response = await remoteDatasource.fetchCharacters(characters);
      return response;
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
