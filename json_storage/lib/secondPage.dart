import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class ParseJson {
  String jsonCrossword;

  Future<String> _loadCrosswordAsset() async {
    return await rootBundle.loadString('assets/crossword.json');
  }

  Future loadCrossword() async {
    jsonCrossword = await _loadCrosswordAsset();
    print(jsonCrossword);
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

	ParseJson parse = new ParseJson();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the second page"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(parse.jsonCrossword.toString()),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                "Go back to first page",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
