import 'package:flutter/material.dart';

import 'app/my_App.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initializing the dependencies registered in init app.
  // await di.serviceLocator.allReady();
  await di.init();
  runApp(const MyApp());
}
