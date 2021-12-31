import 'package:flutter/material.dart';
import 'package:flutter_sqflite/presentation/screens/update_screen.dart';

import 'presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      title: 'Sqflite app',
      
      initialRoute: "/home",
      routes: {
        "/home": (context) => HomeScreen(),
        "/update": (context) => const UpdateScreen(),

      },
    );
  }
}
