import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Aplicativo teste"),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
        ),
        Container(
          color: Colors.red,
          height: 100,
          width: 300,
          child: Text(
            "Mobile",
            style:
                TextStyle(decoration: TextDecoration.none, color: Colors.black),
          ),
        ),
      ],
    ),
  )));
}
