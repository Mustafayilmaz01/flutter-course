import 'package:flutter/material.dart';
import 'package:full_learn/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _backgroundColor = Colors.pink;
              });
            },
            icon: Icon(Icons.clear),
          ),
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemosView(initialColor: _backgroundColor)),
        ],
      ),
    );
  }
}
