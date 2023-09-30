import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Primeiro APP em flutter"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            alignment: AlignmentDirectional.center,
            child: Text(
              "Senai",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Botao pressionado");
            },
            child: Text("+")),
      ),
    );
  }
}
ElevatedButton(
      onPressed: _decrementCounter,
      child: Text('Reset'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
    );