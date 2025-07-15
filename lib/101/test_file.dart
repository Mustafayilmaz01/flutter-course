import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});
  final String name = 'mustafa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Buy The Best One ',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.yellow),
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
