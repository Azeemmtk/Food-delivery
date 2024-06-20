import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/home_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      debugShowMaterialGrid: false,
      home: HomePage(),
    ),
  );
}
