class Constants {
  /// Assets constants
  static const String noImageFound = "assets/images/image.png";

  static const String tryAgainLater = "Try again later";
  static const String releaseDate = "Release Date-";
  static const String directedBy = "Directed by-";
  static const String couldNotLoadCharacters = "Could not load characters";
  static const String url = "https://swapi.dev/api/films/";
  static const String appName = "Star War";
  static const String movies = "Movies";
  static const String characters = "Characters";
  static const String serverFailureMessage = "Error Occurred";
  static const String cacheFailureMessage = "No Cache Found";
  static const String collectMovieLocalTestLabel = 'Should  collect the movies data from Local';
  static const String collectMovieRemoteTestLabel = 'Should  collect the movies data from API';
  static const String checkLocalDataPresentTestLabel = 'should return cache failure last locally cached data if not present';
  static const String checkLastLocalDataPresent = 'should return last locally cache data if present';
  static const String serverFailureTest = 'should return server failure cache remote data un-successful';
  static const String remoteDataSuccessTest = 'should return remote data source when successful';
  static const String saveRemoteToCacheTest = 'should cache remote data locally after calling API';
  static const String checkDeviceOnlineTest = 'should check device is online';
  static const String checkDeviceOfflineTest = 'device is offline';
  static const String checkDeviceAvailabilityTest = 'device is online';
  static const String getConnectTest = 'get Connected';
  static const String collectMovieResponseTest = 'collect movie Response';
  static const String getAPIResponseTest = 'get Api Response';
  static const String throwErrorTest = 'should throw error when server fails';
  static const String callSharedPreferenceDataTest = 'should call shared preference to cache data';
  static const String cacheTest = 'cache test';
  static const String throwErrorNoDataTest = 'should return cache exception when no data exists in cache';
  static const String returnDataExistsTest = 'should return data from shared preference when if exists';
  static const String getSharedPreferenceData = 'get shared preferences data';
  static const String initialTestShouldBeEmptyTest = 'initial test should be empty';
  static const String getMovieDetailTest = 'Get Movies Json Details';
  static const String shouldCheckMovieTest = 'Should check movie list';
  static const String emitLoadingTest = 'Should Emit[Loading,Loaded] when data fully loaded';
}
