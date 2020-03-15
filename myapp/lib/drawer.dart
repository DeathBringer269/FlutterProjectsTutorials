import 'package:flutter/material.dart';
import 'package:myapp/login.dart';

void main() {
  runApp(MaterialApp(title: "Drawer App", home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App drawer tutorial'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Colors.deepOrange,
                Colors.orangeAccent,
              ])),
              child: Text("This is the drawer header"),
            ),
            CustomListTile(Icons.person, "Profile", ()=>{}),
            CustomListTile(Icons.notifications, "Notifications", ()=>{}),
            CustomListTile(Icons.settings, "Settings", ()=>{}),
            CustomListTile(Icons.account_box, "Log out", ()=>{}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {

	IconData icon;
	String text;
	Function onTap;

	CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Container(
	      decoration: BoxDecoration(
		      border: Border(bottom: BorderSide(color: Colors.grey[350])),
	      ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
