import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title ='Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black,
       ),
       backgroundColor: Colors.black,
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child:SizedBox(width: MediaQuery.of(context).size.width,
               child: CustomFoodButton(title: title),),
             ),
           ),
           const SizedBox(height: 50,),
           CustomFoodButton(title: title),
       
         ],
       ),
    );
  }
}

class ColorsUtility{
  static const Color redColor = Colors.red;
}

class PaddingUtility{
  static const EdgeInsets normalPadding = EdgeInsets.all(8.00);
  static const EdgeInsets normal2xPadding = EdgeInsets.all(16.00);
}

class CustomFoodButton extends StatelessWidget {
  const CustomFoodButton({super.key, required this.title});
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsUtility.redColor,
            shape: StadiumBorder(),
          ),
          onPressed: () {},
          child: Center(
            child: Padding(
              padding: PaddingUtility.normal2xPadding,
              child: Text(title,style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          );
  }
}
