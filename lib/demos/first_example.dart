import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn/101/image_learn.dart';

class FirstExample extends StatelessWidget {
  const FirstExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text('Daily Note'),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Imagesinif.resim),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Welcome to the First App',
                style: ProjectStyles.welcomeStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Buraya bir şey ekleyebilirsiniz',style: ProjectStyles.welcomeStyle,),
            ),
            const Spacer(),
            TextButton_()
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class TextButton_ extends StatelessWidget {
  const TextButton_({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: () {}, child: Text('New Note',style: ProjectStyles.welcomeStyle,)),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}

class ProjectStyles {
  static const TextStyle welcomeStyle = TextStyle(
    fontStyle: FontStyle.italic,
    fontSize: 18,
    color: Colors.black87,
  );
}
