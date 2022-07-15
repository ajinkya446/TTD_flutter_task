import 'package:flutter/material.dart';

import 'app/my_App.dart';
import 'injection_container.dart';

// part 'main.main.dart';
// part 'main_model.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initializing the dependencies registered in init app.
  // await di.serviceLocator.allReady();
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

