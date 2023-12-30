import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onpressed;

  Mybutton({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialButton(
      onPressed: onpressed,
      child: Text(text),
      color: Colors.yellow,
    );
  }
}
