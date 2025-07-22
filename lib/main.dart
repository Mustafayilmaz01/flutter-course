import 'package:flutter/material.dart';
import 'package:full_learn/101/navigation_learn.dart';

import 'package:full_learn/demos/my_collection_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mustafa Yılmaz',
      theme: ThemeData.light().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.black),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          actionsIconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: TextStyle(color: Colors.white),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.blueGrey,
          prefixIconColor: Colors.red,
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.blue),
        ),
      ),
      home: NavigationLearn(),
    );
  }
}
