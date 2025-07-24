import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      decoration: InputDecoration(border: UnderlineInputBorder(), hintText: 'Password'),
    );
  }
}
