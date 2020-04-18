import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  var textList = [
    "Hello World",
    "Hello world again",
    "M not that creative",
    "Running out of words now",
    "Okay"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(child: Text(textList[0])),
    );
  }
}
