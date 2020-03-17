import 'package:flutter/material.dart';

class Question extends StatelessWidget {

	final String questionText;

	Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(this.questionText, style: TextStyle(
	    color: Colors.blue,
	    fontSize: 25.0,
      ),),
    );
  }
}
