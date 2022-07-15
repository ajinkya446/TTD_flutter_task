import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCollectMovieFromAPI extends Mock implements StarWarsRepository {}

void main() {
  late CollectDataFromAPI useCases;
  late MockCollectMovieFromAPI mockCollectMovieFromAPI;
  final data = StarWarMoviesModel(count: 6, result: [
    {"Welcome": "Ajinkya"}
  ]);
  setUp(() {
    mockCollectMovieFromAPI = MockCollectMovieFromAPI();
    useCases = CollectDataFromAPI(mockCollectMovieFromAPI);
    when(mockCollectMovieFromAPI.collectMoviesListFromAPI(Constants.url)).thenAnswer((_) async => Right(data));
  });

  test(Constants.collectMovieRemoteTestLabel, () async* {
    final result = await useCases(Params(url: Constants.url));
    expect(result, equals(Right(data)));
    verify(mockCollectMovieFromAPI.collectMoviesListFromAPI(Constants.url));
    verifyNoMoreInteractions(mockCollectMovieFromAPI);
  });
}
