import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/core/error/exceptions.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/movies_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import '../../../../fixtures/fixtures.dart';
import 'movies_remote_datasource_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {
  late MockHttpClient mockHttpClient;
  late RemoteDataSourceImpl remoteDatasourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    remoteDatasourceImpl = RemoteDataSourceImpl(client: mockHttpClient);
  });

  group(TestConstants.apiResultTest, () {
    test(TestConstants.apiResultTest, () async* {
      when(mockHttpClient.get(Uri.parse(Constants.url), headers: anyNamed('headers'))).thenAnswer((_) async => http.Response(fixture('movies.json'), 200));
      final result = await remoteDatasourceImpl.collectMoviesListFromAPI(Constants.url);
      verify(mockHttpClient.get(Uri.parse(Constants.url), headers: {
        'Content-type': 'application/json',
      }));
      expect(result, equals(TestConstants.tStarWarModel));
    });

    test(TestConstants.throwErrorAPITest, () async {
      when(mockHttpClient.get(Uri.parse(Constants.url))).thenAnswer((_) async => http.Response('something went wrong', 404));
      final call = remoteDatasourceImpl.collectMoviesListFromAPI;
      expect(() => call(Constants.url), throwsA(const TypeMatcher<ServerExceptions>()));
    });
  });
}
