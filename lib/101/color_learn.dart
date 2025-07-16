import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('data'),
      ),
      body: Container(

        color: ColorItems.sulu,
      ),



    );
  }

}
class ColorItems {
  static Color porchase = Color(0xffEDBF61);
  static Color sulu=Color.fromRGBO(198, 237, 97, 1);
}