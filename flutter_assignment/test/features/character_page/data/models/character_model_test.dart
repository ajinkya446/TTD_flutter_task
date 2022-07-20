import 'dart:convert';

import 'package:flutter_assignment/features/character_page/data/models/character_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixtures.dart';

void main() {
  CharacterModels tCharacterModel = CharacterModels.fromJson(json.decode(fixture('characters.json')));

  test('should be sub class of Character entity', () async {
    expect(tCharacterModel, isA<CharacterModels>());
  });

  group('from JSON & to JSON', () {
    test('collect json data', () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('characters.json'));
      final result = CharacterModels.fromJson(jsonMap);

      expect(result, tCharacterModel);
    });

    test('collect To json data', () async {
      final result = tCharacterModel.toJson();
      CharacterModels model = CharacterModels.fromJson(json.decode(fixture("characters.json")));
      final expectedMap = model.toJson();
      expect(result, expectedMap);
    });
  });
}
