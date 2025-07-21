import 'package:flutter/material.dart';
import 'package:full_learn/101/list_view_builder.dart';
import 'package:full_learn/101/list_view_learn.dart';

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
      home: ListViewBuilderLearn(),
    );
  }
}
