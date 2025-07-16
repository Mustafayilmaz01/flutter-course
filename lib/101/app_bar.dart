import 'package:flutter/material.dart';

class AppbarLearnView extends StatelessWidget {
  @override
  Widget build(Object context) {
    final String _title = 'Welcome Learn';

    return Scaffold(
    
     
     appBar: AppBar(
    title: Center(child: Text(_title)),
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