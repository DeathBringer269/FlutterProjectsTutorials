import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = (_questionIndex + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questions': 'What\'s your favorite color?',
        'answers': ['Red', 'Blue', 'Green']
      },
      {
        'questions': 'What\'s your favorite animal',
        'answers': ['Dog', 'Cat', 'Pig']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questions'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 10.0,
          child: RaisedButton(
            child: Text("Test",
                style: TextStyle(
                  color: Colors.white,
                )),
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
