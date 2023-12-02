import 'package:flutter/material.dart';

class telasecundaria extends StatelessWidget {
  const telasecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Segunda Tela"),
      ),
      body: Column(
        children: [
          Text("Segunda tela"),
        ],
      ),
    );
  }
}
