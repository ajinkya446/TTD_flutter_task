import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixtures.dart';
import 'collect_data_from_api_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CollectDataFromAPI>(as: #MockCollectMovieFromAPI)])
void main() {
  MockCollectMovieFromAPI mockCollectMovieFromAPI = MockCollectMovieFromAPI();
  StarWarMoviesModel modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));
  MovieListParams params = MovieListParams(url: Constants.url);

  setUp(() {
    mockCollectMovieFromAPI = MockCollectMovieFromAPI();
    when(mockCollectMovieFromAPI.call(params)).thenAnswer((_) async => Right(modelData));
  });

  test('Collection of movies from API', () async {
    final result = await mockCollectMovieFromAPI.call(params);
    expect(result, equals(Right(modelData)));
    verify(mockCollectMovieFromAPI.call(params));
    verifyNoMoreInteractions(mockCollectMovieFromAPI);
  });
}
