import 'package:flutter/material.dart';
import 'package:full_learn/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.grey,
     appBar: AppBar(),
     body: Column(children: [

     Card(
       child: ListTile(
        //title: Text('Custom Card'),
        title:  RandomImage(),
        dense: true,
        onTap: () {},
        subtitle: Text('How do you do use your card'),
        leading: Icon(Icons.money),
        trailing: Icon(Icons.chevron_right),
       
       ),
     )




     ],),
    );
  }

}