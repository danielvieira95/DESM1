import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Lista de componentes Compra"),
          ),
          body: Column(
            children: [],
          )),
    );
  }
}

class Componente extends StatefulWidget {
  const Componente({super.key});

  @override
  State<Componente> createState() => _ComponenteState();
}

class _ComponenteState extends State<Componente> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 300,
            height: 250,
            child: Text(
              "Componente",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    print("Botão pressionado");
                  },
                  child: Text("Mensagem")),
              ElevatedButton(
                  onPressed: () {
                    print("Cont ++");
                  },
                  child: Icon(Icons.add)),
            ],
          ),
          Container(color: Colors.red, width: 300, height: 250),
        ],
      ),
    );
  }
}
