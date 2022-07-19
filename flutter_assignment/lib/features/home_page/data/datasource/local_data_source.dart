import '../../../../core/storage/star_war_database.dart';

abstract class MoviesLocalDatasource {
  Future<List<String>> getCharacters(int resultId);
}

class LocalDatasourceImpl implements MoviesLocalDatasource {
  LocalDatasourceImpl();

  @override
  Future<List<String>> getCharacters(int resultId) async {
    List<String> characters = [];
    try {
      List<Map> resultsCharacters = await StarWarDatabase.instance.getAllCharacters(resultId);
      for (var resultRow in resultsCharacters) {
        characters.add(resultRow["api"]);
      }
      return characters;
    } catch (e) {
      throw e;
    }
  }
}
