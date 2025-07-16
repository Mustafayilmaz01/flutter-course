import 'package:flutter/material.dart';
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text('data'),),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: Container(color: Colors.white,height: 100,width: 200,)),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 10,horizontal: 20),
              child: Container(color: Colors.white,height: 100,width: 200,),
            ),
          Padding(
            padding: ProjectPadding.pagePaddingRightOnly,
            child: const Text('data'),
          )
        
          ],
        ),
      ),
    );
  }

}
class ProjectPadding {
  static const pagePaddingVertical = const EdgeInsets.all(16.0);
  static const pagePaddingRightOnly= const EdgeInsets.only(left: 30.0);
}