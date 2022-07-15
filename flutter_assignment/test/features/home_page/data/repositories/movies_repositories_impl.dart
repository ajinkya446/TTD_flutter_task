import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/core/error/failure.dart';
import 'package:flutter_assignment/core/network/network_info.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_local_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_assignment/features/home_page/data/repositories/star_war_repository_impl.dart';
import 'package:flutter_assignment/features/home_page/domain/entities/star_wars_movies_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDataSource extends Mock implements MoviesRemoteDatasource {}

class MockLocalDataSource extends Mock implements MoviesLocalDatasource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late StarWarsRepositoryImpl starWarsRepositoryImpl;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    starWarsRepositoryImpl = StarWarsRepositoryImpl(remoteDatasource: mockRemoteDataSource, localDatasource: mockLocalDataSource, networkInfo: mockNetworkInfo);
  });

  void runTestOnline(Function body) {
    group(Constants.checkDeviceAvailabilityTest, () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
        starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
        verify(mockNetworkInfo.isConnected);
      });
      body();
    });
  }

  void runTestOffline(Function body) {
    group(Constants.checkDeviceOfflineTest, () {
      setUp(() {
        when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group(Constants.getConnectTest, () {
    final modelData = StarWarMoviesModel(count: 6, result: [
      {"Welcome": "Ajinkya"}
    ]);
    final StarWarMovieEntity entityData = modelData;

    test(Constants.checkDeviceOnlineTest, () async {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
      verify(mockNetworkInfo.isConnected);
    });

    runTestOnline(() {
      test(Constants.remoteDataSuccessTest, () async {
        when(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url)).thenAnswer((_) async => modelData);
        final result = await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);

        verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
        expect(result, equals(Right(entityData)));
      });

      test(Constants.saveRemoteToCacheTest, () async {
        when(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url)).thenAnswer((_) async => modelData);
        await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
        verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
        verify(mockLocalDataSource.cacheMoviesList(modelData));
      });

      test(Constants.serverFailureTest, () async {
        when(mockRemoteDataSource.collectMoviesListFromAPI(any as String)).thenThrow(ServerExceptions("Error Occurred"));
        final result = await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
        // verifyZeroInteractions(mockLocalDataSource);
        verify(mockRemoteDataSource.collectMoviesListFromAPI(Constants.url));
        expect(result, equals(Left(ServerFailure(Constants.serverFailureMessage))));
      });
    });

    runTestOffline(() {
      test(Constants.checkLastLocalDataPresent, () async {
        when(mockLocalDataSource.getMoviesFromLocal()).thenAnswer((realInvocation) async => modelData);
        final result = await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.getMoviesFromLocal());
        expect(result, equals(Right(entityData)));
      });

      test(Constants.checkLocalDataPresentTestLabel, () async {
        when(mockLocalDataSource.getMoviesFromLocal()).thenThrow(CacheExceptions("No cache found"));
        final result = await starWarsRepositoryImpl.collectMoviesListFromAPI(Constants.url);
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.getMoviesFromLocal());
        expect(result, equals(Left(CacheFailure(Constants.cacheFailureMessage))));
      });
    });
  });

  ///TODO: Need to write the local database unit test below.
}
