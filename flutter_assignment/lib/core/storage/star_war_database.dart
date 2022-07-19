import 'dart:async';

import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:sqflite/sqflite.dart';

import '../../constants/constants.dart';
import '../../features/home_page/data/models/star_war_model.dart';

class DatabaseHelper {
  // make this a singleton class
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await initDatabase();

  ///Initialization of the database object and table creation
  Future initDatabase() async {
    String dbPath = await getDatabasesPath();
    String path = dbPath + "/" + Constants.databaseName;
    try {
      return await openDatabase(path, onCreate: onCreate, version: 1);
    } catch (e) {
      throw Exception(e);
    }
  }

  /// Creating tables and executes database actions onCreate
  Future<void> onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE ${Constants.tableNameMovies}(id INTEGER PRIMARY KEY AUTOINCREMENT, create_date STRING, count INTEGER )');
    await db.execute('CREATE TABLE ${Constants.tableNameCharacterAPI}(capi_id INTEGER PRIMARY KEY AUTOINCREMENT, api STRING, FK_results INTEGER,'
        'FOREIGN KEY(FK_results) REFERENCES ${Constants.tableNameResults}(result_id))');

    await db.execute('CREATE TABLE ${Constants.tableNameCharacterInfo}(char_id INTEGER PRIMARY KEY AUTOINCREMENT,'
        ' name STRING, height STRING, mass STRING, hair_color STRING,skin_color STRING, eye_color STRING,'
        'birth_year STRING,gender STRING, homeworld STRING, created STRING,edited STRING,url STRING,'
        'FK_character_id INTEGER,'
        'FOREIGN KEY(FK_character_id) REFERENCES ${Constants.tableNameResults}(result_id))');
    await db.execute('CREATE TABLE ${Constants.tableNameResults}(result_id INTEGER PRIMARY KEY AUTOINCREMENT, title STRING,episode_id INTEGER,opening_crawl INTEGER,'
        'director STRING, producer STRING,release_date STRING,created STRING,edited STRING,url STRING,FK_result INTEGER, FK_character INTEGER,'
        ' FOREIGN KEY(FK_result) REFERENCES ${Constants.tableNameMovies}(id)'
        ' FOREIGN KEY(FK_character) REFERENCES ${Constants.tableNameSpaciesAPI}(capi_id))');
  }

  /// Check movies details exists in table or not.
  Future checkDataExists(dynamic model) async {
    final result = await _database!.query(Constants.tableNameMovies, where: 'count=?', whereArgs: [model.count]);
    return result;
  }

  /// Check if any data present inside the table Movies
  Future getAllMovies() async {
    List<Map> result = await _database!.query(Constants.tableNameMovies);
    if (result.isNotEmpty) {
      for (var data in result) {
        String dateTimeNew = data["create_date"].toString();
        DateTime dateTime = DateTime.parse(dateTimeNew);
        Duration dur = DateTime.now().difference(dateTime);
        String diffInMonth = (dur.inDays / 30).floor().toString();
        print(diffInMonth);
        if (int.parse(diffInMonth) == 1) {
          try {
            await _database!.delete(Constants.tableNameMovies);
            await _database!.delete(Constants.tableNameResults);
            await _database!.delete(Constants.tableNameCharacterAPI);
            await _database!.delete(Constants.tableNameCharacterInfo);
            final value = await _database!.query(Constants.tableNameMovies);
            return value;
          } catch (error) {
            throw Exception('DbBase.cleanDatabase: ' + error.toString());
          }
        } else {
          final value = await _database!.query(Constants.tableNameMovies);
          return value;
        }
      }
    } else {
      return result;
    }
  }

  /// Check if any data present inside the table Results
  Future getAllResults() async {
    final result = await _database!.query(Constants.tableNameResults);
    return result;
  }

  /// Check if any data present inside the table Results
  Future getCharacterInfo() async {
    final result = await _database!.query(Constants.tableNameCharacterInfo);
    return result;
  }

  /// Check if any data present inside the table Results
  Future getCharacterInfoById(int id) async {
    final result = await _database!.query(Constants.tableNameCharacterInfo, where: 'FK_character_id=$id');
    return result;
  }

  /// Check if any data present inside the table Results
  Future getAllCharacters(int resultId) async {
    final result = await _database!.query(Constants.tableNameCharacterAPI, where: 'FK_results=$resultId');
    return result;
  }

  /// Insert data to table Movies
  Future insertDataToMovies(StarWarMoviesModel model) async {
    return await _database!.insert(Constants.tableNameMovies, {
      "create_date": DateTime.now().toString(),
      "count": model.count,
    });
  }

  /// Insert data to table Character Information
  Future insertDataToCharacterInfo(CharacterModels model, int id) async {
    return await _database!.insert(Constants.tableNameCharacterInfo, {
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
      await _database!.insert(Constants.tableNameResults, {
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
        await _database!.insert(Constants.tableNameCharacterAPI, {"api": model.results[index].characters[i], "FK_results": index + 1});
      }
    }
  }
}
