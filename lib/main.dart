import 'package:flutter/material.dart';
import 'package:full_learn/101/test_file.dart';
import 'package:full_learn/101/container_sized_box_learn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: true,
      title: 'Mustafa Yilmaz',
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}
