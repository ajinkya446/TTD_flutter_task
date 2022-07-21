import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
import 'package:flutter_assignment/features/home_page/presentation/cubit/movie_list_cubit.dart';
import 'package:flutter_assignment/features/home_page/presentation/cubit/movie_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import '../../../../fixtures/fixtures.dart';
import 'home_page_cubit_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CollectDataFromAPI>(as: #MockMoviesRemoteData, returnNullOnMissingStub: true), MockSpec<CollectDataFromLocal>(as: #MockMoviesLocalData)])
void main() {
  late MovieListCubit cubit;
  late MockMoviesRemoteData mockMoviesListRemoteData;
  late MockMoviesLocalData mockMoviesListLocalData;

  StarWarMoviesModel modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));
  setUp(() {
    mockMoviesListRemoteData = MockMoviesRemoteData();
    mockMoviesListLocalData = MockMoviesLocalData();
    cubit = MovieListCubit(mockMoviesListRemoteData, mockMoviesListLocalData);
  });

  group(TestConstants.moviesCubitTest, () {
    setUp(() {
      when(mockMoviesListRemoteData.call(any)).thenAnswer((_) async => Right(modelData));
    });
    // Cubit data loading test
    blocTest<MovieListCubit, MovieListState>(
      TestConstants.moviesLoadingEmptyStateTest,
      build: () => cubit,
      act: (MovieListCubit newCubit) async {
        await newCubit.getAPIResponse();
      },
      expect: () => [MovieListState.Loaded(modelData)],
    );

    // Cubit data Empty test
    blocTest<MovieListCubit, MovieListState>(
      TestConstants.movieEmptyStateTest,
      build: () => cubit,
      act: (newCubit) => newCubit.emit(const MovieListState.Empty()),
      expect: () => <MovieListState>[const MovieListState.Empty()],
    );

    // Cubit data Empty test
    blocTest<MovieListCubit, MovieListState>(
      TestConstants.moviesErrorStateTest,
      build: () => cubit,
      act: (newCubit) => newCubit.emit(const MovieListState.Error()),
      expect: () => <MovieListState>[const MovieListState.Error()],
    );
  });
}
