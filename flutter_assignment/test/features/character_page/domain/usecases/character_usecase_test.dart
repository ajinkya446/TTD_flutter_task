import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/features/character_page/domain/usecases/charactaer_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../constants/test_constants.dart';
import 'character_usecase_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<CharacterUseCase>(as: #MockCharacterList)])
void main() {
  late MockCharacterList mockCharacterList;
  late CharacterUsecaseParams params;
  setUp(() {
    params = CharacterUsecaseParams(characters: TestConstants.characterList, id: 1);
    mockCharacterList = MockCharacterList();
  });

  test(TestConstants.collectionCharacterDetailsTest, () async {
    when(mockCharacterList.call(params)).thenAnswer((_) async => Right(TestConstants.characterModelList));
    final result = await mockCharacterList.call(params);
    expect(result, equals(Right(TestConstants.characterModelList)));
    verify(mockCharacterList.call(params));
    verifyNoMoreInteractions(mockCharacterList);
  });
}
