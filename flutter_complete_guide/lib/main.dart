import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
	@override
	State<StatefulWidget> createState() {
		return _MyAppState();
	}
}

class _MyAppState extends State<MyApp> {

	var _questionIndex = 0;

	void answerQuestion() {
		setState(() {
			_questionIndex += 1;
		});
	}

	@override
	Widget build(BuildContext context) {
		var _questions = [
			'What is your favorite color?',
			'What is your favorite animal'];
		return MaterialApp(
			home: Scaffold(
				appBar: AppBar(
					title: Text("My first app"),
				),
				body: Center(
					child: Container(
						width: double.infinity,
						margin: EdgeInsets.fromLTRB(10.0, 100.0, 10.0, 100.0),
						decoration: BoxDecoration(
							color: Colors.black12,
							borderRadius: BorderRadius.all(Radius.circular(10.0))
						),
					  child: Padding(
					    padding: const EdgeInsets.all(10.0),
					    child: Column(
					    	mainAxisAlignment: MainAxisAlignment.center,
					    	children: <Widget>[
					    		Question(
					    			_questions[_questionIndex],
					    		),
					    		RaisedButton(
								    color: Colors.blue,
					    			child: Text("Answer 1", style: TextStyle(
									    color: Colors.white,
								    )),
					    			onPressed: answerQuestion,
					    		),
					    		RaisedButton(
								    color: Colors.blue,
					    			child: Text("Answer 2", style: TextStyle(
									    color: Colors.white,
								    )),
					    			onPressed: answerQuestion,
					    		),
					    	],
					    ),
					  ),
					),
				),
			),
		);
	}
}
