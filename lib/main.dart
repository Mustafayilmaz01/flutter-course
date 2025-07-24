import 'package:flutter/material.dart';
import 'package:full_learn/202/animated_learn.dart';
import 'package:full_learn/202/oop_learn_view.dart';
import 'package:full_learn/202/theme/light_theme.dart';

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
      theme: LightTheme().theme,

      home: OopLearnView(),
    );
  }
}
