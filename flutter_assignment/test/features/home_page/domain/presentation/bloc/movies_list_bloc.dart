// import 'package:dartz/dartz.dart';
// import 'package:flutter_assignment/constants/constants.dart';
// import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
// import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
// import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
// import 'package:flutter_assignment/features/home_page/presentation/bloc/list_movies_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
//
// ///Mocking the Remote API movies list collection
// class MockMoviesListRemoteData extends Mock implements CollectDataFromAPI {}
//
// ///Mocking the local database movies list collection
// class MockMoviesListLocalData extends Mock implements CollectDataFromLocal {}
//
// void main() {
//   late ListMoviesBloc listMoviesBloc;
//   late MockMoviesListRemoteData mockMoviesListRemoteData;
//   late MockMoviesListLocalData mockMoviesListLocalData;
//
//   setUp(() {
//     mockMoviesListRemoteData = MockMoviesListRemoteData();
//     mockMoviesListLocalData = MockMoviesListLocalData();
//     listMoviesBloc = ListMoviesBloc(collectDataFromLocal: mockMoviesListLocalData, collectDataFromAPI: mockMoviesListRemoteData);
//   });
//
//   test(Constants.initialTestShouldBeEmptyTest, () async {
//     expect(listMoviesBloc.initialState, equals(Empty()));
//   });
//
//   group(Constants.getMovieDetailTest, () {
//     final movieJson = StarWarMoviesModel(count: 6, result: [
//       {"Welcome": "Ajinkya"}
//     ]);
//     test(Constants.shouldCheckMovieTest, () async {
//       listMoviesBloc.mapEventToState(GetMovie(starWarMoviesModel: movieJson));
//     });
//
//     // test('Should emit [Error] when data is invalid', () {
//     //   when(listMoviesBloc.mapEventToState(GetMovie(StarWarMoviesModel(count: 0, result: [])))).thenThrow(ServerFailure(Constants.serverFailureMessage));
//     //   final expectData = [Empty(), Error(message: "No Movies Found")];
//     //   listMoviesBloc.dispatch(GetMovie(StarWarMoviesModel(count: 0, result: [])));
//     //   expectLater(listMoviesBloc.state, throwsA(TypeMatcher<ServerFailure>()));
//     // });
//
//     test(Constants.emitLoadingTest, () async* {
//       when(mockMoviesListRemoteData(Params(url: Constants.url))).thenAnswer((_) async => Future.value(Right(movieJson)));
//       final expected = [Empty(), Loading(), Loaded(model: movieJson)];
//       expectLater(listMoviesBloc.state, emitsInOrder(expected));
//       listMoviesBloc.mapEventToState(GetMovie(starWarMoviesModel: movieJson));
//     });
//
//     // test('Should Emit[Loading,Error] when data not loaded', () async {
//     //   when(mockMoviesListRemoteData(Params(url: Constants.url))).thenAnswer((_) async => Left(ServerFailure(Constants.serverFailureMessage)));
//     //   final expected = [Empty(), Loading(), Error(message: Constants.serverFailureMessage)];
//     //   expectLater(listMoviesBloc.state, emitsInOrder(expected));
//     //   listMoviesBloc.dispatch(GetMovie(movieJson));
//     // });
//   });
// }
