import 'dart:convert';

import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixtures.dart';

void main() {
  final tStarWarModel = StarWarMoviesModel(count: 6, next: null, previous: null, result: [
    {"name": "Ajinkya"}
  ]);

  test('should be sub class of star war entity', () async {
    expect(tStarWarModel, isA<StarWarMoviesModel>());
  });

  group('from JSON', () {
    test('collect json data', () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('movies.json'));
      final result = StarWarMoviesModel.fromJson(jsonMap);

      expect(result, tStarWarModel);
    });

    test('collect To json data', () async {
      final result = tStarWarModel.toJson();
      final expectedMap = {
        "count": 6,
        'next': null,
        'previous': null,
        "results": [
          {"name": "Ajinkya"}
        ]
      };
      expect(result, expectedMap);
    });
  });
}
