import 'package:flutter_assignment/constants/constants.dart';
import 'package:flutter_assignment/features/character_page/data/datasource/character_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import '../../../../fixtures/fixtures.dart';
import 'character_remote_datasource_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<http.Client>(as: #MockCharacterHttpClient)])
void main() {
  late MockCharacterHttpClient mockCharacterHttpClient;
  late CharacterSourceImpl remoteDatasourceImpl;

  setUp(() {
    mockCharacterHttpClient = MockCharacterHttpClient();
    remoteDatasourceImpl = CharacterSourceImpl(client: mockCharacterHttpClient);
  });

  group(TestConstants.characterRemoteTest, () {
    test(TestConstants.characterAPITest, () async* {
      when(mockCharacterHttpClient.get(Uri.parse(Constants.url), headers: anyNamed('headers'))).thenAnswer((_) async => http.Response(fixture('characters.json'), 200));

      final result = await remoteDatasourceImpl.fetchCharacters(TestConstants.characterList, 1);

      expect(result, equals(TestConstants.modelData));
    });
  });
}
