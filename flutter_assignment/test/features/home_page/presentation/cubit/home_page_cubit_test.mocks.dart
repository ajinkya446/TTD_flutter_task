// Mocks generated by Mockito 5.2.0 from annotations
// in flutter_assignment/test/features/home_page/presentation/cubit/home_page_cubit_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:flutter_assignment/core/error/failure.dart' as _i6;
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart'
    as _i7;
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart'
    as _i2;
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart'
    as _i4;
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeStarWarsRepository_0 extends _i1.Fake
    implements _i2.StarWarsRepository {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [CollectDataFromAPI].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesRemoteData extends _i1.Mock implements _i4.CollectDataFromAPI {
  @override
  _i2.StarWarsRepository get starWarsRepository =>
      (super.noSuchMethod(Invocation.getter(#starWarsRepository),
          returnValue: _FakeStarWarsRepository_0()) as _i2.StarWarsRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, _i7.StarWarMoviesModel>> call(
          _i4.MovieListParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
              returnValue:
                  Future<_i3.Either<_i6.Failure, _i7.StarWarMoviesModel>>.value(
                      _FakeEither_1<_i6.Failure, _i7.StarWarMoviesModel>()))
          as _i5.Future<_i3.Either<_i6.Failure, _i7.StarWarMoviesModel>>);
}

/// A class which mocks [CollectDataFromLocal].
///
/// See the documentation for Mockito's code generation for more information.
class MockMoviesLocalData extends _i1.Mock implements _i8.CollectDataFromLocal {
  MockMoviesLocalData() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.StarWarsRepository get starWarsRepository =>
      (super.noSuchMethod(Invocation.getter(#starWarsRepository),
          returnValue: _FakeStarWarsRepository_0()) as _i2.StarWarsRepository);
  @override
  _i5.Future<List<String>> call(_i8.LocalParams? params) =>
      (super.noSuchMethod(Invocation.method(#call, [params]),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i5.Future<List<String>>);
}
