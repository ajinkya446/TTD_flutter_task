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
  await init();
  runApp(const MyApp());
}
