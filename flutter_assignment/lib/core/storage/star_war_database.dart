import 'dart:async';

import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:sqflite/sqflite.dart';

import '../../features/home_page/data/models/star_war_model.dart';

class StarWarDatabase {
  String databaseName = 'star_war.db';
  String tableNameMovies = 'MovieDetails';
  String tableNameResults = 'Results';
  String tableNameCharacterAPI = 'CharacterAPI';
  String tableNameVehicleAPI = 'VehicleAPI';
  String tableNamePlanetsAPI = 'PlanetsAPI';
  String tableNameSpaciesAPI = 'SpaciesAPI';
  String tableNameStarshipAPI = 'StarshipAPI';
  String tableNameCharacterInfo = 'CharacterInfo';

  // make this a singleton class
  StarWarDatabase._privateConstructor();

  static final StarWarDatabase instance = StarWarDatabase._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await initDatabase();

  Future initDatabase() async {
    String dbPath = await getDatabasesPath();
    String path = dbPath + "/" + databaseName;
    try {
      return await openDatabase(path, onCreate: onCreate, version: 1);
    } catch (e) {
      print(e);
    }
  }

  Future<void> onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE $tableNameMovies(id INTEGER PRIMARY KEY AUTOINCREMENT, is_loaded STRING, count INTEGER )');
    await db.execute('CREATE TABLE $tableNameCharacterAPI(capi_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING, FK_results INTEGER,'
        'FOREIGN KEY(FK_results) REFERENCES $tableNameResults(result_id))');

    await db.execute('CREATE TABLE $tableNameCharacterInfo(char_id INTEGER PRIMARY KEY AUTOINCREMENT,'
        ' name STRING, height STRING, mass STRING, hair_color STRING,skin_color STRING, eye_color STRING,'
        'birth_year STRING,gender STRING, homeworld STRING, created STRING,edited STRING,url STRING,'
        'FK_character_id INTEGER,'
        'FOREIGN KEY(FK_character_id) REFERENCES $tableNameResults(result_id))');

    // await db.execute('CREATE TABLE $tableNamePlanetsAPI(papi_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING)');
    // await db.execute('CREATE TABLE $tableNameVehicleAPI(vapi_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING)');
    // await db.execute('CREATE TABLE $tableNameSpaciesAPI(sapi_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING)');
    // await db.execute('CREATE TABLE $tableNameStarshipAPI(star_api_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING)');
    await db.execute('CREATE TABLE $tableNameResults(result_id INTEGER PRIMARY KEY AUTOINCREMENT, title STRING,episode_id INTEGER,opening_crawl INTEGER,'
        // 'FK_spacies INTEGER,FK_starship INTEGER,FK_vehicle INTEGER,FK_planets INTEGER,'
        'director STRING, producer STRING,release_date STRING,created STRING,edited STRING,url STRING,FK_result INTEGER, FK_character INTEGER,'
        ' FOREIGN KEY(FK_result) REFERENCES $tableNameMovies(id)'
        ' FOREIGN KEY(FK_character) REFERENCES $tableNameSpaciesAPI(capi_id))'
        // ' FOREIGN KEY(FK_spacies) REFERENCES $tableNameSpaciesAPI(sapi_id),'
        // ' FOREIGN KEY(FK_starship) REFERENCES $tableNameStarshipAPI(star_api_id),'
        // ' FOREIGN KEY(FK_vehicle) REFERENCES $tableNameVehicleAPI(vapi_id),'
        // ' FOREIGN KEY(FK_planets) REFERENCES $tableNamePlanetsAPI(papi_id))'
        );
  }

  /// Check movies details exists in table or not.
  Future checkDataExists(dynamic model) async {
    final result = await _database!.query(tableNameMovies, where: 'count=?', whereArgs: [model.count]);
    return result;
  }

  /// Check if any data present inside the table Movies
  Future getAllMovies() async {
    final result = await _database!.query(tableNameMovies);
    return result;
  }

  /// Check if any data present inside the table Results
  Future getAllResults() async {
    final result = await _database!.query(tableNameResults);
    return result;
  }

  /// Check if any data present inside the table Results
  Future getCharacterInfo() async {
    final result = await _database!.query(tableNameCharacterInfo);
    return result;
  }

  /// Check if any data present inside the table Results
  Future getCharacterInfoById(int id) async {
    final result = await _database!.query(tableNameCharacterInfo, where: 'FK_character_id=$id');
    return result;
  }

  /// Check if any data present inside the table Results
  Future getAllCharacters(int resultId) async {
    final result = await _database!.query(tableNameCharacterAPI, where: 'FK_results=$resultId');
    return result;
  }

  /// Insert data to table Movies
  Future insertDataToMovies(StarWarMoviesModel model) async {
    return await _database!.insert(tableNameMovies, {
      "is_loaded": "true",
      "count": model.count,
    });
  }

  /// Insert data to table Character Information
  Future insertDataToCharacterInfo(CharacterModels model, int id) async {
    return await _database!.insert(tableNameCharacterInfo, {
      "name": model.name,
      "height": model.height,
      "mass": model.mass,
      "hair_color": model.hair_color,
      "skin_color": model.skin_color,
      "eye_color": model.eye_color,
      "birth_year": model.birth_year,
      "gender": model.gender,
      "homeworld": model.homeworld,
      "created": model.created,
      "edited": model.edited,
      "url": model.url,
      "FK_character_id": id
    });
  }

  /// Inserting records as per there model values
  Future insertDataResults(StarWarMoviesModel model) async {
    for (int index = 0; index < model.results.length; index++) {
      await _database!.insert(tableNameResults, {
        'title': model.results[index].title,
        'episode_id': model.results[index].episode_id,
        'opening_crawl': model.results[index].opening_crawl,
        'FK_result': 1,
        'FK_character': index + 1,
        'director': model.results[index].director,
        'producer': model.results[index].producer,
        'release_date': model.results[index].release_date,
        'created': model.results[index].release_date,
        'edited': model.results[index].edited,
        'url': model.results[index].url,
      });
    }
  }

  ///Inserting characters values inside the table
  Future insertDataCharacters(StarWarMoviesModel model) async {
    for (int index = 0; index < model.results.length; index++) {
      for (int i = 0; i < model.results[index].characters.length; i++) {
        await _database!.insert(tableNameCharacterAPI, {"api": model.results[index].characters[i], "FK_results": index + 1});
      }
    }
  }
}
