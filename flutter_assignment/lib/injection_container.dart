import 'package:flutter_assignment/features/character_page/domain/repository/character_repository.dart';
import 'package:flutter_assignment/features/character_page/domain/usecases/charactaer_list.dart';
import 'package:flutter_assignment/features/character_page/presentation/cubit/character_list_cubit.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/repositories/star_war_repository_impl.dart';
import 'package:flutter_assignment/features/home_page/domain/repositories/star_wars_repository.dart';
import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromAPI.dart';
import 'package:flutter_assignment/features/home_page/presentation/cubit/movie_list_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'features/character_page/data/datasource/character_remote_datasource.dart';
import 'features/character_page/data/repositories/character_repository_impl.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerFactory(() => http.Client);
  serviceLocator.registerFactory(() => InternetConnectionChecker());

  // Remote Data Source
  serviceLocator.registerLazySingleton<MoviesRemoteDatasource>(() => RemoteDataSourceImpl(client: http.Client()));

  /// Registering repository
  serviceLocator.registerLazySingleton<StarWarsRepository>(() => StarWarsRepositoryImpl(remoteDatasource: serviceLocator<MoviesRemoteDatasource>()));
  serviceLocator.registerLazySingleton(() => CollectDataFromAPI(serviceLocator<StarWarsRepository>()));
  serviceLocator.registerFactory(() => MovieListCubit(serviceLocator<CollectDataFromAPI>()));

  /// Character loading and registering Dependencies

  // Remote Data Source for characters list
  serviceLocator.registerLazySingleton<CharactersRemoteDatasource>(() => CharacterSourceImpl(client: http.Client()));

  serviceLocator.registerLazySingleton<CharactersRepository>(() => CharacterRepositoryImpl(remoteDatasource: serviceLocator<CharactersRemoteDatasource>()));

  /// Registering repository
  serviceLocator.registerLazySingleton(() => CharacterUseCase(serviceLocator<CharactersRepository>()));
  serviceLocator.registerFactory(() => CharacterListCubit(serviceLocator<CharacterUseCase>()));
}
