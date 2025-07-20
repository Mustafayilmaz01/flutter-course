import 'package:flutter/material.dart';
import 'package:full_learn/101/stack_learn.dart';
import 'package:full_learn/demos/stack_demo_view.dart';


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
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: Colors.black,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
          actionsIconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: TextStyle(color: Colors.blueGrey),
        

        ),
      ),
    
      home: StackDemoView(

      ),
    );
  }
}
