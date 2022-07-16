import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/failure.dart';
import '../models/character_model.dart';

abstract class CharactersRemoteDatasource {
  /// Calls the API endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  Future<Either<Failure, List<CharacterModels>>> fetchCharacters(List<String> characters);
}

class CharacterSourceImpl implements CharactersRemoteDatasource {
  final http.Client client;

  CharacterSourceImpl({required this.client});

  /// This Function helps to collect movies data from the swapi.dev/films API
  @override
  Future<Either<Failure, List<CharacterModels>>> fetchCharacters(List<String> characters) async {
    // TODO: implement collectMoviesListFromAPI
    List<CharacterModels> model = [];
    // Checking the API and collect the response by converting json
    try {
      for (int i = 0; i < characters.length; i++) {
        final response = await client.get(Uri.parse(characters[i]), headers: {'Content-type': 'application/json'});
        if (response.statusCode == 200) {
          model.add(CharacterModels.fromJson(json.decode(response.body)));
        }
      }
      return Right(model);
    } catch (e) {
      return Left(ServerFailure(Constants.serverFailureMessage));
    }
  }
}
