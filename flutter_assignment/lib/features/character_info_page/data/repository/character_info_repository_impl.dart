import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/features/character_info_page/data/datasource/character_info_datasource.dart';
import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/character_info_repository.dart';

@LazySingleton(as: CharacterInfoRepository)
class CharacterInfoRepositoryImpl implements CharacterInfoRepository {
  final CharactersInfoRemoteDatasource remoteDatasource;

  CharacterInfoRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, CharacterModels>> getCharacterInformation(CharacterModels characters) async {
    // TODO: implement collectMoviesListFromAPI i.e fetching data from API
    try {
      final response = await remoteDatasource.fetchCharactersMovies(characters);
      return response;
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
