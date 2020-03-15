import 'package:flutter/material.dart';
import 'package:myapp/UI/CustomInputField.dart';

class HomeScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				width: MediaQuery.of(context).size.width,
				height: MediaQuery.of(context).size.height,
				color: Colors.blue,
				child: Stack(
						children: <Widget>[
							Material(
                color: Color.fromRGBO(255, 255, 255, 0.4),
								borderRadius: BorderRadius.all(Radius.circular(200.0)),
								child: Container(
									width: 500,
									height: 500,
								),
							),
							Center(
								child: Container(
									width: 400,
									height: 350,
									child: Column(
										mainAxisAlignment: MainAxisAlignment.spaceEvenly,
										children: <Widget>[
											Material(
												child: Image.asset('assets/images/flutter-logo.svg',
														width: 100,
														height: 100),
												borderRadius: BorderRadius.all(Radius.circular(50.0)),
											),
											Center(
												child: Text(
													"Login",
													style: TextStyle(color: Colors.white, fontSize: 30.0),
												),
											),
											CustomInputField(
													Icon(Icons.person, color: Colors.white), 'Username'),
											CustomInputField(
													Icon(Icons.lock, color: Colors.white), "Password"),
											Container(
												width: 150,
												height: 50,
												child: RaisedButton(
														onPressed: () {},
														shape: RoundedRectangleBorder(
																borderRadius:
																BorderRadius.all(Radius.circular(10.0))),
														color: Colors.amber,
														child: Text('Login',
																style: TextStyle(
																	fontSize: 20.0,
																	color: Colors.white,
																))),
											),
										],
									),
								),
							),
						],
				),
			),
		);
	}
}
