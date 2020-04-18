import 'package:flutter/material.dart';
import './text.dart';
import './textControl.dart';

// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() {
  runApp(MaterialApp(
    title: "Assignment 1",
    home: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 1"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
            	TextOutput(),
              TextControl(),
            ],
          ),
        ),
      ),
    );
  }
}
