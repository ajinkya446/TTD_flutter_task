import 'dart:convert';

import 'package:flutter_assignment/features/home_page/data/models/star_war_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../constants/test_constants.dart';
import '../../../../fixtures/fixtures.dart';

void main() {
  test(TestConstants.testStarWarModel, () async {
    expect(TestConstants.tStarWarModel, isA<StarWarMoviesModel>());
  });

  group(TestConstants.fromJSONTest, () {
    test(TestConstants.collectFromJSON, () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('movies.json'));
      final result = StarWarMoviesModel.fromJson(jsonMap);

      expect(result, TestConstants.tStarWarModel);
    });

    test(TestConstants.collectToJSON, () async {
      final result = TestConstants.tStarWarModel.toJson();
      StarWarMoviesModel model = StarWarMoviesModel.fromJson(json.decode(fixture("movies_with_null.json")));
      final expectedMap = model.toJson();
      expect(result, expectedMap);
    });
  });
}
