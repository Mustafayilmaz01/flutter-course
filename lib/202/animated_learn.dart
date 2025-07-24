import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> {
  bool _isVisible = false;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
        },
        child: Icon(Icons.linked_camera_outlined),
      ),
      body: AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: Duration(seconds: 1),
      ),
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
