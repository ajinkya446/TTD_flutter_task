import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import '../../../../fixtures/fixtures.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockHttpClient;
  late RemoteDataSourceImpl remoteDatasourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDatasourceImpl = RemoteDataSourceImpl(client: mockHttpClient);
  });

  group(Constants.getAPIResponseTest, () {
    test(Constants.collectMovieResponseTest, () async* {
      when(mockHttpClient.get(Uri.parse(Constants.url), headers: anyNamed('headers'))).thenAnswer((response) async => http.Response(fixture('movies.json'), 200));
      final result = await remoteDatasourceImpl.collectMoviesListFromAPI(Constants.url);
      verify(mockHttpClient.get(Uri.parse(Constants.url), headers: {
        'Content-type': 'application/json',
      }));
      final modelData = StarWarMoviesModel(count: 6, next: null, previous: null, result: [
        {"Welcome": "Ajinkya"}
      ]);
      expect(result, equals(modelData));
    });

    test(Constants.throwErrorTest, () async {
      when(mockHttpClient.get(Uri.parse(Constants.url), headers: anyNamed('headers'))).thenAnswer((response) async => http.Response('Something Went Wrong', 404));
      final call = remoteDatasourceImpl.collectMoviesListFromAPI;
      expect(() => call(Constants.url), throwsA(const TypeMatcher<ServerExceptions>()));
    });
  });
}
