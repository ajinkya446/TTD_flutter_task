import 'dart:convert';

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

@GenerateMocks([], customMocks: [MockSpec<CollectDataFromAPI>(as: #MockMoviesListRemoteData), MockSpec<CollectDataFromLocal>(as: #MockMoviesListLocalData)])
void main() {
  late MovieListCubit movieListCubit;
  late MockMoviesListRemoteData mockMoviesListRemoteData;
  late MockMoviesListLocalData mockMoviesListLocalData;

  StarWarMoviesModel modelData = StarWarMoviesModel.fromJson(json.decode(fixture('movies.json')));
  setUp(() {
    mockMoviesListRemoteData = MockMoviesListRemoteData();
    mockMoviesListLocalData = MockMoviesListLocalData();
    movieListCubit = MovieListCubit(mockMoviesListRemoteData, mockMoviesListLocalData);
  });

  test('description Widget', () async {});

  test('Loading state', () async {
    when(mockMoviesListRemoteData(MovieListParams(url: Constants.url))).thenAnswer((_) async => Future.value(Right(json.decode(fixture('movies.json')))));
    final expected = [MovieListState.Empty(), MovieListState.Loaded(modelData), const MovieListState.Error()];
    expectLater(movieListCubit.state, emitsInOrder(expected));
    movieListCubit.getAPIResponse();
  });

  // group(Constants.getMovieDetailTest, () {
  //   final movieJson = StarWarMoviesModel(count: 6, result: [
  //     {"Welcome": "Ajinkya"}
  //   ]);
  //   test(Constants.shouldCheckMovieTest, () async {
  //     listMoviesBloc.mapEventToState(GetMovie(starWarMoviesModel: movieJson));
  //   });
  //
  //   // test('Should emit [Error] when data is invalid', () {
  //   //   when(listMoviesBloc.mapEventToState(GetMovie(StarWarMoviesModel(count: 0, result: [])))).thenThrow(ServerFailure(Constants.serverFailureMessage));
  //   //   final expectData = [Empty(), Error(message: "No Movies Found")];
  //   //   listMoviesBloc.dispatch(GetMovie(StarWarMoviesModel(count: 0, result: [])));
  //   //   expectLater(listMoviesBloc.state, throwsA(TypeMatcher<ServerFailure>()));
  //   // });
  //
  //   test(Constants.emitLoadingTest, () async* {
  //     when(mockMoviesListRemoteData(Params(url: Constants.url))).thenAnswer((_) async => Future.value(Right(movieJson)));
  //     final expected = [Empty(), Loading(), Loaded(model: movieJson)];
  //     expectLater(listMoviesBloc.state, emitsInOrder(expected));
  //     listMoviesBloc.mapEventToState(GetMovie(starWarMoviesModel: movieJson));
  //   });
  //
  //   // test('Should Emit[Loading,Error] when data not loaded', () async {
  //   //   when(mockMoviesListRemoteData(Params(url: Constants.url))).thenAnswer((_) async => Left(ServerFailure(Constants.serverFailureMessage)));
  //   //   final expected = [Empty(), Loading(), Error(message: Constants.serverFailureMessage)];
  //   //   expectLater(listMoviesBloc.state, emitsInOrder(expected));
  //   //   listMoviesBloc.dispatch(GetMovie(movieJson));
  //   // });
  // });
}
