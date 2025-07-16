import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
    backgroundColor: Colors.grey,
    body: Column(
      children: [
        TitleTextWidget(),
                TitleTextWidget(),
        TitleTextWidget(),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
        )

        

      ],
    ),

    
   );
  }

}
class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key,this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    
    return Text('data',style: TextStyle(fontSize: 26));
  }
}