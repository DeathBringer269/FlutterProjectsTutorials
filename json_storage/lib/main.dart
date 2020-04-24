import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//to convert from json to map and vice versa
import 'dart:convert';

//for file and directory
import 'dart:io';

//to get application directory
import 'package:path_provider/path_provider.dart';
import './secondPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JsonStorage",
      theme: ThemeData.light(),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController keyInputController = new TextEditingController();
  TextEditingController valueInputController = new TextEditingController();

  File jsonFile;
  Directory dir;
  String fileName = "myJsonFile.json";
  bool fileExists = false;
  Map<String, dynamic> fileContent;

  void initState() {
    super.initState();
    ParseJson parse = new ParseJson();
    parse.loadCrossword();
    //get the directory asynchronously
    getApplicationDocumentsDirectory().then((Directory directory) {
      //after that create a new file with the directory as prefix
      dir = directory;
      jsonFile = new File(dir.path + "/" + fileName);
      fileExists = jsonFile.existsSync();
      if (fileExists) this.setState(
            //change the state to show the json file contents
            () => fileContent = json.decode(jsonFile.readAsStringSync()));
    });
    print("This has been executed");
  }

  void dispose() {
    keyInputController.dispose();
    valueInputController.dispose();
    super.dispose();
  }

  void createFile(
      Map<String, dynamic> content, Directory dir, String fileName) {
    print("Creating file");
    File file = new File(dir.path + "/" + fileName);
    file.createSync();
    fileExists = file.existsSync();
    if (fileExists) {
      file.writeAsStringSync(json.encode(content));
      //creating a map with the contents of the existing json file
//      Map<String, String> jsonFileContent  = json.decode(jsonFile.readAsStringSync());
      //appending to the map with our content
//      jsonFileContent.addAll(content);
      //the map needs to be encoded before writing to json file
//      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("Error file could not be created");
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
  }

  void writeFile(String key, String value) {
    print("Writing to file");
    //creating new map with the passed arguments
    Map<String, dynamic> content = {key: value};
    if (fileExists) {
      print("File exists");
      //creating a map with the contents of the existing json file
      Map<String, dynamic> jsonFileContent =
          json.decode(jsonFile.readAsStringSync());
      //appending to the map with our content
      jsonFileContent.addAll(content);
      //the map needs to be encoded before writing to json file
      jsonFile.writeAsStringSync(json.encode(jsonFileContent));
    } else {
      print("File does not exist");
      createFile(content, dir, fileName);
    }
    this.setState(() => fileContent = json.decode(jsonFile.readAsStringSync()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Storage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Text(
              "File content",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              fileContent.toString(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Add to json file",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.vpn_key),
                border: OutlineInputBorder(),
                hintText: "Eg. Name",
                labelText: "Enter a key",
              ),
              controller: keyInputController,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.text_fields),
                border: OutlineInputBorder(),
                hintText: "Eg. Alan",
                labelText: "Enter a value",
              ),
              controller: valueInputController,
            ),
            RaisedButton(
              child: Text("Add to json"),
              onPressed: () =>
                  writeFile(keyInputController.text, valueInputController.text),
            ),
            RaisedButton(
              color: Colors.blueAccent,
              child: Text(
                "Go to second page",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
