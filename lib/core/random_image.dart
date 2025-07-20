import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  final imageUrl = 'https://picsum.photos/200/300';
  final double height;

  const RandomImage({super.key, this.height = 100,});
  @override
  Widget build(BuildContext context) {
    
    return Image.network(imageUrl,fit: BoxFit.cover,height: height);
  }

}