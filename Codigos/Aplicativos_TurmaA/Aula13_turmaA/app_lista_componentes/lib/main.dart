import 'package:flutter/material.dart'; // Permite criar os widgets para SO Android

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Lista de componentes"),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              color: Colors.orange,
              width: 400,
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blueGrey,
                  height: 120,
                  width: 100,
                ),
                Text(
                  "Resistor",
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ]),
          Container(
            color: Colors.blue,
            width: 400,
            height: 20,
          ),
        ],
      ),
    ),
  ));
}
