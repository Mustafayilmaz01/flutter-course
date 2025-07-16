import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

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
            width: 25,
            height: 25,
            child: Text('b' * 500),
          ),
          Container(
            width: 100,
            height: 100,
            constraints: BoxConstraints(),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
            child: Center(child: Text('Mustafa')
            )
            ),
          
        ],
      ),
    );
  }
}

class ProjectUtility{
  static BoxDecoration boxDecoration=BoxDecoration(
       gradient: const LinearGradient(colors: [Colors.red,Colors.lime]),
       border: Border.all(width: 10, color: Colors.white12)
    
  );

}