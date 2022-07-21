import 'dart:convert';

import 'package:flutter_assignment/features/home_page/data/models/movies_list/movies_list.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../constants/test_constants.dart';
import '../../../../../fixtures/fixtures.dart';

void main() {
  List<Results> tResults = [];
  Map<String, dynamic> jsonData = json.decode(fixture('results.json'));
  for (int i = 0; i < jsonData["result"].length; i++) {
    tResults.add(Results.fromJson(jsonData["result"][i]));
  }

  test(TestConstants.testMoviesModel, () async {
    expect(tResults, isA<List<Results>>());
  });

  group(TestConstants.collectFromJSON, () {
    test('collect json data', () async {
      List<Results> data = [];
      final Map<String, dynamic> jsonMap = json.decode(fixture('results.json'));
      for (int i = 0; i < jsonMap["result"].length; i++) {
        data.add(Results.fromJson(jsonMap["result"][i]));
      }
      final result = data;
      expect(result, tResults);
    });

    test(TestConstants.collectToJSON, () async {
      List<Map<String, dynamic>> expectData = [];
      List<Map<String, dynamic>> resultData = [];
      final Map<String, dynamic> jsonMap = json.decode(fixture('results.json'));
      for (int i = 0; i < jsonMap["result"].length; i++) {
        Results testData = Results.fromJson(jsonMap["result"][i]);
        expectData.add(testData.toJson());
      }
      final expectedMap = expectData;
      for (int i = 0; i < tResults.length; i++) {
        resultData.add(tResults[i].toJson());
      }
      expect(resultData, expectedMap);
    });
  });
}
