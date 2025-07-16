import 'package:flutter/material.dart';
import 'package:full_learn/101/test_file.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('mustafa')),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Bana Tıkla',
              style: ProjectStyles.welcomeStyle,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Bana Tıkla'),
          ),
          OutlinedButton(
            onPressed: null,
            child: Text('mustafa yilmaz',
            style: Theme.of(context).textTheme.headlineSmall),
          ),
          InkWell(
            onTap: () {},
            child: const Text('data'),
          ),
        ],
      ),
    );
  }
}
