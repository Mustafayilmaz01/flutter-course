import 'package:flutter/material.dart';

class LightTheme {
  ThemeData theme = ThemeData(
    floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green),
    textTheme: ThemeData.light().textTheme.copyWith(titleMedium: TextStyle(fontSize: 25, color: Colors.black)),
  );
}
