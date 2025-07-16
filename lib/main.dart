import 'package:flutter/material.dart';
import 'package:full_learn/101/test_file.dart';
import 'package:full_learn/101/container_sized_box_learn.dart';
import 'package:full_learn/101/scaffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // true yerine false tercih edilir genelde
      title: 'Mustafa Yılmaz',
      theme: ThemeData.dark(),
      home: const ScaffoldLearnView(), // const eklendi, çünkü StatelessWidget
    );
  }
}
