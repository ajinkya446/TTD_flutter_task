import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/local_data_source.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/data/repositories/star_war_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixtures.dart';
import 'star_wars_repository_impl.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<MoviesRemoteDatasource>(as: #MockRemoteDataSource), MockSpec<MoviesLocalDatasource>(as: #MockLocalDataSource)])
void main() {
  late StarWarsRepositoryImpl starWarsRepositoryImpl;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  StarWarMoviesModel modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));
  List<String> characterList = [
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
  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    starWarsRepositoryImpl = StarWarsRepositoryImpl(remoteDatasource: mockRemoteDataSource, localDatasource: mockLocalDataSource);
  });

  group('Check All repository Implementation', () {
    test('Collect movies from api', () async {
      when(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url)).thenAnswer((_) async => Right(modelData));
      final result = await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
      expect(result, equals(Right(modelData)));
      verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });

    test('Collect Characters from local', () async {
      when(mockLocalDataSource.getCharacters(1)).thenAnswer((_) async => characterList);
      final result = await starWarsRepositoryImpl.getAllCharacters(1);
      expect(result, equals(characterList));
      verify(mockLocalDataSource.getCharacters(1));
      verifyNoMoreInteractions(mockLocalDataSource);
    });

    // test('Collect movies from api getting exception', () async {
    //   final exception = ServerExceptions(Constants.serverFailureMessage);
    //   when(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url)).thenAnswer((_) async => Left(ServerFailure(Constants.serverFailureMessage)));
    //   final result = starWarsRepositoryImpl.collectMoviesListFromAPI;
    //   // verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
    //   expect(() => result(Constants.url), throwsA(TypeMatcher<ServerFailure>()));
    //   // verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
    //   // verifyNoMoreInteractions(mockRemoteDataSource);
    // });
  });
}
