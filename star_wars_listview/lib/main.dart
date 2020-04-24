import 'package:flutter/material.dart';
import 'package:starwarslistview/models/starWarsTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<StarWarsFilm> _filmList = [
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode I - The Phantom Menance(1999)",
      description: "t",
    ),
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode II – Attack of the Clones (2002)",
      description: "t",
    ),
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode III – Revenge of the Sith (2005)",
      description: "",
    ),
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode IV – A New Hope (1977)",
      description: "t",
    ),
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode V – The Empire Strikes Back (1980)",
      description: "",
    ),
    StarWarsFilm(
      imgUrl: "t",
      title: "Episode VI – Return of the Jedi (1983)",
      description: "t",
    ),
  ];

  jsonFile = File 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars Films'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: ExpansionTile(
              title: Text(_filmList[index].title),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(_filmList[index].title),
                ),
              ],
            ),
          );
        },
        itemCount: _filmList.length,
      ),
    );
  }
}
