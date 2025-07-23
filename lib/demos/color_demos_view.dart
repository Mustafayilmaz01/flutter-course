import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(title: Text('Renk Değişim Oyunu')),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == MyColors.red.index) {
            changeBackgroundColor(Colors.red);
            // ignore: avoid_print
            print('Kırmızı');
          } else if (value == MyColors.yellow.index) {
            changeBackgroundColor(Colors.yellow);
            // ignore: avoid_print
            print('Sarı');
          } else {
            // ignore: avoid_print
            print('Mavi');
            changeBackgroundColor(Colors.blue);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red),
            label: 'Red',
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow),
            label: 'Yellow',
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue),
            label: 'Blue',
          ),
        ],
      ),
    );
  }
}

class _ColorContainer extends StatelessWidget {
  // ignore: unused_element_parameter
  const _ColorContainer({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color, width: 20, height: 20);
  }
}

enum MyColors { red, yellow, blue }
