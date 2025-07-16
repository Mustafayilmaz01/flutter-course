import 'package:flutter/material.dart';
import 'package:full_learn/101/card_learn.dart';
import 'package:full_learn/101/image_learn.dart';


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
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.green,
          actionsIconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: TextStyle(color: Colors.blueGrey),
        

        ),
      ),
      home: ImageLearn(

      ),
    );
  }
}
