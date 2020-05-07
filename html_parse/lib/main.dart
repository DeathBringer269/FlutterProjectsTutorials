import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(BeerListApp());

class BeerListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Beer list app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black,
      ),
      home: Home(),
    );
  }
}
