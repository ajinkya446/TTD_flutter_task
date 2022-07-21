import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/features/character_page/data/datasource/character_remote_datasource.dart';
import 'package:flutter_assignment/features/character_page/data/repositories/character_repository_impl.dart';
import 'package:flutter_assignment/features/home_page/data/datasource/local_data_source.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import 'character_repository_impl.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CharactersRemoteDatasource>(as: #MockCharacterRemoteDataSource), MockSpec<MoviesLocalDatasource>(as: #MockLocalDataSource)])
void main() {
  late CharacterRepositoryImpl starWarsRepositoryImpl;
  late MockCharacterRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockCharacterRemoteDataSource();
    starWarsRepositoryImpl = CharacterRepositoryImpl(remoteDatasource: mockRemoteDataSource);
  });

  group(TestConstants.testAllRepository, () {
    test(TestConstants.collectCharactersTest, () async {
      when(mockRemoteDataSource.fetchCharacters(TestConstants.characterList, 1)).thenAnswer((_) async => Right(TestConstants.characterModelList));
      final result = await starWarsRepositoryImpl.getAllCharacters(TestConstants.characterList, 1);
      expect(result, equals(Right(TestConstants.characterModelList)));
      verify(mockRemoteDataSource.fetchCharacters(TestConstants.characterList, 1));
      verifyNoMoreInteractions(mockRemoteDataSource);
    });
  });
}
