import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String text;

  Answer(this.selectHandler, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueAccent,
        child: Text(text,
            style: TextStyle(
              color: Colors.white,
            )),
        onPressed: selectHandler,
      ),
    );
  }
}
