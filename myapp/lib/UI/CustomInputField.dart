import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hintText;

  CustomInputField(this.fieldIcon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
        elevation: 5.0,
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: fieldIcon,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
              width: 250,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
