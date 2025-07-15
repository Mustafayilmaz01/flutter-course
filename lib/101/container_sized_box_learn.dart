import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 250,
            height: 250,
            child: Text('Mustafa' * 500),
          ),
          SizedBox(
            width: 250,
            height: 250,
            child: Text('b' * 500),
          ),
          Container(
            width: 100,
            height: 100,
            // color: Colors.red, // ❌ Bunu kaldırdık
            constraints: BoxConstraints(),
            child: Center(child: Text('Mustafa')),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue, // ✅ Renk buraya taşındı
              border: Border.all(width: 10, color: Colors.white12),
            ),
          ),
        ],
      ),
    );
  }
}
