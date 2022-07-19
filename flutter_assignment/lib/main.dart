import 'package:flutter/material.dart';
import 'package:flutter_assignment/core/storage/star_war_database.dart';

import 'app/my_App.dart';
import 'injection_container.dart';

// part 'main.main.dart';
// part 'main_model.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Opening and creation of SQFLite- database
  await StarWarDatabase.instance.database;

  // await db.insert(StarWarDatabase().tableNameMovies, {
  //   "count": 6,
  // });
  //
  // await db.insert(StarWarDatabase().tableNameResults, {"title": "A New Hope", "episode_id": 4, "opening_crawl": "It is a period of", "FK_result": "1"});
  await init();
  runApp(const MyApp());
}

// @immutable
// abstract class Model with _$Model {
//   // final int count;
//   // final int? next;
//   // final int? previous;
//   // final List<dynamic> result;
//   const factory Model(int count, dynamic next, dynamic previous, List<dynamic> result) =_Model;
//
//   factory Model.fromJson(Map<String, dynamic> json) => _$Model(json);
//
// }
