import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SpinKitFadingFour(color: Colors.black));
  }
}
