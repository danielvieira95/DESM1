import 'package:app_multiplastelas/telasecundaria.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: primeiratela(),
  ));
}

class primeiratela extends StatelessWidget {
  const primeiratela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => telasecundaria()));
              },
              child: Text("Tela2")),
        ],
      ),
    );
  }
}
