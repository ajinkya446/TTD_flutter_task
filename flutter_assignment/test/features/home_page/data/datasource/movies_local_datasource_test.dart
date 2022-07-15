import 'dart:convert';

import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_local_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixtures.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late MovieLocalDatasourceImpl movieLocalDatasourceImpl;
  late MockSharedPreferences mockSharedPreferences;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    movieLocalDatasourceImpl = MovieLocalDatasourceImpl(sharedPreferences: mockSharedPreferences);
  });

  group(Constants.getSharedPreferenceData, () {
    final modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies_cached.json')));
    test(Constants.returnDataExistsTest, () async* {
      when(mockSharedPreferences.getString('cache_count')).thenReturn(fixture('movies_cached.json'));
      final result = await movieLocalDatasourceImpl.getMoviesFromLocal();
      verify(mockSharedPreferences.getString('cache_count'));
      expect(result, modelData);
    });

    test(Constants.throwErrorNoDataTest, () async* {
      when(mockSharedPreferences.getString('cache_count')).thenReturn(null);
      final call = movieLocalDatasourceImpl.getMoviesFromLocal;
      // verify(mockSharedPreferences.getString('cache_count'));
      expect(() => call(), throwsA(const TypeMatcher<CacheExceptions>()));
    });
  });

  group(Constants.cacheTest, () {
    final modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies_cached.json')));
    test(Constants.callSharedPreferenceDataTest, () async* {
      await movieLocalDatasourceImpl.cacheMoviesList(modelData);
      final expectedJsonString = jsonEncode(modelData);
      verify(mockSharedPreferences.setString('cache_count', expectedJsonString));
    });
  });
}
