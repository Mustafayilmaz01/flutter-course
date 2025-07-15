import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'mustafa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Buy The Best One ',
          style: ProjectStyles.welcomeStyle.copyWith(
            fontSize: Theme.of(context).textTheme.headlineSmall?.fontSize,
            color: ProjectColor.welcomecolor,
          ),
        ),
      ),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
    wordSpacing: 2,
    letterSpacing: 2,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    color: Colors.blueGrey,
  );
}

class ProjectColor {
  static Color welcomecolor = Colors.red; // ✅ Bu satır eksiksiz ve doğru olmalı
}
