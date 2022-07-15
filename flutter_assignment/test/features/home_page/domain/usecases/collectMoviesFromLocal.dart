import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/CollectDataFromLocal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockCollectMovieFromLocale extends Mock implements StarWarsRepository {}

void main() {
  late CollectDataFromLocal useCases;
  late MockCollectMovieFromLocale mockCollectMovieFromLocal;
  final data = StarWarMoviesModel(count: 6, result: [
    {"Welcome": "Ajinkya"}
  ]);
  setUp(() {
    mockCollectMovieFromLocal = MockCollectMovieFromLocale();
    useCases = CollectDataFromLocal(mockCollectMovieFromLocal);
    // when(mockCollectMovieFromLocal.collectMoviesListFromLocal()).thenAnswer((_) async => Right(data));
  });

  test(Constants.collectMovieLocalTestLabel, () async *{
    final result = await useCases(NoParams());

    expect(result, equals(Right(data)));
    verify(mockCollectMovieFromLocal.collectMoviesListFromLocal());
    verifyNoMoreInteractions(mockCollectMovieFromLocal);
  });
}
