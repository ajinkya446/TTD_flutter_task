import 'package:flutter_assignment/features/home_page/domain/usecases/collectDataFromLocal.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import 'collect_data_from_local.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CollectDataFromLocal>(as: #MockCollectMovieFromLocal)])
void main() {
  MockCollectMovieFromLocal mockCollectMovieFromLocal = MockCollectMovieFromLocal();

  LocalParams params = LocalParams(remoteId: 1);

  setUp(() {
    when(mockCollectMovieFromLocal.call(params)).thenAnswer((_) async => TestConstants.characterList);
  });

  test('Collection of movies from Local', () async {
    final result = await mockCollectMovieFromLocal.call(params);
    expect(result, equals(TestConstants.characterList));
    verify(mockCollectMovieFromLocal.call(params));
    verifyNoMoreInteractions(mockCollectMovieFromLocal);
  });
}
