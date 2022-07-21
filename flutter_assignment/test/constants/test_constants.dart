import 'dart:convert';

import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';

import '../fixtures/fixtures.dart';

class TestConstants {
  static const String collectMoviesTest = 'Collection of movies from API';
  static const String collectMoviesLocalTest = 'Collection of movies from Local';
  static const String fromJSONTest = 'from JSON & to JSON';
  static const String collectFromJSON = 'collect json data';
  static const String collectToJSON = 'collect To json data';
  static const String testMoviesModel = 'should be sub class of Movies List entity';
  static const String testStarWarModel = 'should be sub class of star war entity';
  static const String apiResultTest = 'API Test Response result';
  static const String throwErrorAPITest = 'Throws error in api response';
  static const String collectionCharacterDetailsTest = 'Collection of characters details';
  static const String testAllRepository = 'Check All repository characters Implementation';
  static const String collectCharactersTest = 'Collect characters from api';
  static const String characterRemoteTest = 'Character API Test Response result';
  static const String characterAPITest = 'Characters API Test result';
  static const String characterCubitTest = 'Characters Cubit Widget Test';
  static const String moviesCubitTest = 'Movies Cubit Widget Test';

  /// Movies test widget constants
  static const String movieEmptyStateTest = 'emits [MoviesListState Empty] when No data';
  static const String moviesErrorStateTest = 'emits [MoviesListState Error] when Error Occurred';
  static const String moviesLoadingEmptyStateTest = 'emits [MoviesListState Loading] when successful';

  /// Characters test widget Constant
  static const String characterEmptyStateTest = 'emits [CharacterListState Init] when No data';
  static const String characterStateLoadingTest = 'emits [CharacterListState Loading] when successful';
  static const String characterStateErrorTest = 'emits [CharacterListState Error] when Error Occurred';
  static List<String> characterList = [
    "https://swapi.dev/api/people/1/",
    "https://swapi.dev/api/people/2/",
    "https://swapi.dev/api/people/3/",
    "https://swapi.dev/api/people/4/",
    "https://swapi.dev/api/people/5/",
    "https://swapi.dev/api/people/6/",
    "https://swapi.dev/api/people/7/",
    "https://swapi.dev/api/people/8/",
    "https://swapi.dev/api/people/9/",
    "https://swapi.dev/api/people/10/",
    "https://swapi.dev/api/people/12/",
    "https://swapi.dev/api/people/13/",
    "https://swapi.dev/api/people/14/",
    "https://swapi.dev/api/people/15/",
    "https://swapi.dev/api/people/16/",
    "https://swapi.dev/api/people/18/",
    "https://swapi.dev/api/people/19/",
    "https://swapi.dev/api/people/81/"
  ];

  static StarWarMoviesModel tStarWarModel = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));

  static List<CharacterModels> modelData = [CharacterModels.fromJson(json.decode(fixture('characters.json')))];

  static List<CharacterModels> characterModelList = [CharacterModels.fromJson(json.decode(fixture('characters.json')))];
}
