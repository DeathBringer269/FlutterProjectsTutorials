import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
	final String title;

	Page2(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text(title),
	    ),
	    body: Center(
		    child: Text("This is page 2")
	    ),
    );
  }
}
