import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     appBar: AppBar(title: Text('data'),
     ),
    body: Column(
      children: [
        SizedBox(
        height: 100,
        width: 100,
        child: Image.asset(Imagesinif.resim,
        fit: BoxFit.cover,
        
        ),

        ),
        
      ],

    ),


    );
  }

}
class Imagesinif{
  static String resim = "assets/images/logo.png";
}