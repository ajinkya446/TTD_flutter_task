import 'package:flutter_assignment/core/network/network_info.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_local_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/repositories/star_war_repository_impl.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_assignment/features/home_page/presentation/movie_list_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/home_page/domain/usecases/collectDataFromLocal.dart';

final serviceLocator = GetIt.instance;
// final getIt = GetIt.instance;

Future<void> init() async {
  /// Core Implementation

  /// External object instantiation.
  final preferences = await SharedPreferences.getInstance();
  serviceLocator.registerFactory(() => preferences);
  serviceLocator.registerFactory(() => http.Client);
  serviceLocator.registerFactory(() => InternetConnectionChecker());

  // Registering use cases.
  // Remote Data Source
  serviceLocator.registerLazySingleton<MoviesRemoteDatasource>(() => RemoteDataSourceImpl(client: serviceLocator<http.Client>()));
  // Local Data Source
  serviceLocator.registerLazySingleton<MoviesLocalDatasource>(() => MovieLocalDatasourceImpl(sharedPreferences: serviceLocator<SharedPreferences>()));

  // Network Info
  serviceLocator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(serviceLocator<InternetConnectionChecker>()));

  /// Registering repository
  serviceLocator.registerLazySingleton<StarWarsRepository>(() => StarWarsRepositoryImpl(
        remoteDatasource: serviceLocator<MoviesRemoteDatasource>(),
        localDatasource: serviceLocator<MoviesLocalDatasource>(),
        networkInfo: serviceLocator<NetworkInfo>(),
      ));
  serviceLocator.registerLazySingleton(() => CollectDataFromAPI(serviceLocator<StarWarsRepository>()));
  serviceLocator.registerLazySingleton(() => CollectDataFromLocal(serviceLocator<StarWarsRepository>()));
  serviceLocator.registerFactory(() => MovieListCubit());
  // serviceLocator.registerFactory(() => ListMoviesBloc(collectDataFromAPI: serviceLocator<CollectDataFromAPI>(), collectDataFromLocal: serviceLocator<CollectDataFromLocal>()));
}

// @injectableInit()
// Future configureInjection(String environment) async {
//   $initGetIt(getIt, environment: environment); //call the service registration
// }
