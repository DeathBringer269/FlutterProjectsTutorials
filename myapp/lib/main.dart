import 'package:flutter/material.dart';
import 'package:myapp/page2.dart';

void main() {
  runApp(MaterialApp(
    title: "Routes",
    home: HomeScreen(),
	  routes: {
      "/a": (BuildContext context) => Page2("Page 2"),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Drawer App",
          style: TextStyle(
            fontSize: 20.0,
//	          color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
//        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 5.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Alan Dsilva"),
              accountEmail: Text("alandsilva2001@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("P"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Q"),
                ),
              ],
            ),
            ListTile(
              title: Text("Home Page"),
              trailing: Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).pop(),
            ),
            Divider(),
            ListTile(
              title: Text("Page 2"),
              trailing: Icon(Icons.arrow_downward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Page2("Page 2")));
              },
            ),
            Divider(),
            ListTile(
              title: Text("Page 3"),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Page2("Page 3")));
              },
            ),
          ],
        ),
      ),
      body: Container(
//        color: Color.fromRGBO(255, 255, 255, 1),
        child: Center(
          child: Text("Home Page",
              style: TextStyle(
                fontSize: 20.0,
              )),
        ),
      ),
    );
  }
}
