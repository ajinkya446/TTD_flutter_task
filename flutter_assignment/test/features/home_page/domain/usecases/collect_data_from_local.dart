import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'collect_data_from_local.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CollectDataFromLocal>(as: #MockCollectMovieFromLocal)])
void main() {
  MockCollectMovieFromLocal mockCollectMovieFromLocal = MockCollectMovieFromLocal();
  List<String> characterList = [
    "https://swapi.dev/api/people/1/",
    "https://swapi.dev/api/people/2/",
    "https://swapi.dev/api/people/3/",
    "https://swapi.dev/api/people/4/",
    "https://swapi.dev/api/people/5/",
    "https://swapi.dev/api/people/6/",
    "https://swapi.dev/api/people/7/",
    "https://swapi.dev/api/people/8/",
    "https://swapi.dev/api/people/9/",
    "https://swapi.dev/api/people/10/",
    "https://swapi.dev/api/people/12/",
    "https://swapi.dev/api/people/13/",
    "https://swapi.dev/api/people/14/",
    "https://swapi.dev/api/people/15/",
    "https://swapi.dev/api/people/16/",
    "https://swapi.dev/api/people/18/",
    "https://swapi.dev/api/people/19/",
    "https://swapi.dev/api/people/81/"
  ];
  LocalParams params = LocalParams(remoteId: 1);

  setUp(() {
    when(mockCollectMovieFromLocal.call(params)).thenAnswer((_) async => characterList);
  });

  test('Collection of movies from Local', () async {
    final result = await mockCollectMovieFromLocal.call(params);
    expect(result, equals(characterList));
    verify(mockCollectMovieFromLocal.call(params));
    verifyNoMoreInteractions(mockCollectMovieFromLocal);
  });
}
