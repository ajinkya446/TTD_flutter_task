import 'package:flutter/material.dart';

import 'app/my_App.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initializing the dependencies registered in init app.
  // await di.serviceLocator.allReady();
  await init();
  runApp(const MyApp());
}
