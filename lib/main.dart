// Flutter UI package
import 'package:flutter/material.dart';

// Firebase core package
import 'package:firebase_core/firebase_core.dart';

// Start screen file
import 'start_screen.dart';

void main() async {

  // Flutter widgets ko Firebase se pehle initialize karna
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase initialize (Server connection)
  await Firebase.initializeApp();

  // App start
  runApp(MyApp());
}

// Root widget
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',

      // First screen
      home: StartScreen(),
    );
  }
}
