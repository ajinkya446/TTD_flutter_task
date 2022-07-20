import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
import 'package:flutter_assignment/features/home_page/presentation/cubit/movie_list_cubit.dart';
import 'package:flutter_assignment/features/home_page/presentation/cubit/movie_list_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixtures.dart';
import 'home_page_cubit_test.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<CollectDataFromAPI>(as: #MockMoviesRemoteData, returnNullOnMissingStub: true),
  MockSpec<CollectDataFromLocal>(as: #MockMoviesLocalData),
  MockSpec<MovieListParams>(as: #MockParams, returnNullOnMissingStub: true)
])
void main() {
  late MovieListCubit cubit;
  late MockMoviesRemoteData mockMoviesListRemoteData;
  late MockMoviesLocalData mockMoviesListLocalData;
  late MockParams mockParams;

  StarWarMoviesModel modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));
  setUp(() {
    mockMoviesListRemoteData = MockMoviesRemoteData();
    mockMoviesListLocalData = MockMoviesLocalData();
    cubit = MovieListCubit(mockMoviesListRemoteData, mockMoviesListLocalData);
    mockParams = MockParams();
  });

  group('Cubit Widget Test', () {

    // Cubit data loading test
    blocTest<MovieListCubit, MovieListState>(
      'emits [MoviesListState Loading] when successful',
      build: () => cubit,
      act: (MovieListCubit newCubit) async {
        when(mockMoviesListRemoteData.call(MovieListParams(url: Constants.url))).thenAnswer((_) async => Right(modelData));
        await newCubit.getAPIResponse();
        verify(mockMoviesListRemoteData.call(mockParams));
      },
      expect: () => [MovieListState.Empty(), MovieListState.Loaded(modelData)],
    );

    // // Cubit data Empty test
    // blocTest<MovieListCubit, MovieListState>(
    //   'emits [MoviesListState Empty] when No data',
    //   build: () => MovieListCubit(MockCollectMovieFromAPI(), MockCollectMovieFromLocal()),
    //   act: (newCubit) => newCubit.emit(MovieListState.Empty()),
    //   expect: () => <MovieListState>[MovieListState.Empty()],
    // );
    //
    // // Cubit data Empty test
    // blocTest<MovieListCubit, MovieListState>(
    //   'emits [MoviesListState Error] when Error Occurred',
    //   build: () => MovieListCubit(MockCollectMovieFromAPI(), MockCollectMovieFromLocal()),
    //   act: (newCubit) => newCubit.emit(MovieListState.Error()),
    //   expect: () => <MovieListState>[MovieListState.Error()],
    // );
  });
}
