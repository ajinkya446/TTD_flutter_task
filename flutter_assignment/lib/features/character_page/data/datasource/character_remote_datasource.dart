import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/core/storage/star_war_database.dart';
import 'package:http/http.dart' as http;

import '../../../../core/error/failure.dart';
import '../models/character_model.dart';

abstract class CharactersRemoteDatasource {
  /// Calls the API endpoint
  ///
  /// Throws [ServerExceptions] exception if error occurs
  Future<Either<Failure, List<CharacterModels>>> fetchCharacters(List<String> characters, int id);
}

class CharacterSourceImpl implements CharactersRemoteDatasource {
  final http.Client client;

  CharacterSourceImpl({required this.client});

  /// This Function helps to collect movies data from the swapi.dev/films API
  @override
  Future<Either<Failure, List<CharacterModels>>> fetchCharacters(List<String> characters, int id) async {
    // TODO: implement collectMoviesListFromAPI
    List<CharacterModels> model = [];
    List<Map> result = await StarWarDatabase.instance.getCharacterInfo();
    if (result.isEmpty) {
      // Checking the API and collect the response by converting json
      try {
        for (int i = 0; i < characters.length; i++) {
          final response = await client.get(Uri.parse(characters[i]), headers: {'Content-type': 'application/json'});
          if (response.statusCode == 200) {
            model.add(CharacterModels.fromJson(json.decode(response.body)));
            await StarWarDatabase.instance.insertDataToCharacterInfo(CharacterModels.fromJson(json.decode(response.body)), id);
          }
        }
        return Right(model);
      } catch (e) {
        return Left(ServerFailure(Constants.serverFailureMessage));
      }
    } else {
      try {
        List<Map> characterResult = await StarWarDatabase.instance.getCharacterInfoById(id);
        if (characterResult.length > 1 && characterResult.isNotEmpty) {
          for (var row in characterResult) {
            if (row["FK_character_id"] == id) {
              final charModel = CharacterModels(row["name"], row["height"].toString(), row["mass"].toString(), row["hair_color"], row["skin_color"], row["eye_color"], row["birth_year"], row['gender'],
                  row["homeworld"], [], [], [], [], row["created"], row["edited"], row["url"]);
              model.add(charModel);
            }
          }
        } else {
          for (int i = 0; i < characters.length; i++) {
            final response = await client.get(Uri.parse(characters[i]), headers: {'Content-type': 'application/json'});
            if (response.statusCode == 200) {
              model.add(CharacterModels.fromJson(json.decode(response.body)));
              await StarWarDatabase.instance.insertDataToCharacterInfo(CharacterModels.fromJson(json.decode(response.body)), id);
            }
          }
        }
        if (model.isNotEmpty) {
          return Right(model);
        } else {
          return Left(CacheFailure(Constants.cacheFailureMessage));
        }
      } catch (e) {
        return Left(CacheFailure(Constants.cacheFailureMessage));
      }
    }
  }
}
