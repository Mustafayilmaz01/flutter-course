import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  const AppbarLearnView({super.key});

  @override
  Widget build(Object context) {
    final String title = 'Welcome Learn';

    return Scaffold(
    
     
     appBar: AppBar(
    title: Center(child: Text(title)),
    leading: const Icon(Icons.chevron_left),
    
    actions: [
      IconButton(onPressed: () {}, icon:Icon(Icons.menu_book
      ),), 
      // Center(child: const CircularProgressIndicator.adaptive())
    ],




     ),


    );
  }

}