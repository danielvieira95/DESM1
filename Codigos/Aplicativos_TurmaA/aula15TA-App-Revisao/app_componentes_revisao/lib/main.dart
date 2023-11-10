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
            children: [
              Componente("Resistor"),
            ],
          )),
    );
  }
}

class Componente extends StatefulWidget {
  final String nome_c; // final antes do tipo da variavel
  // protege contra alteração acidental
  Componente(this.nome_c, {super.key});

  @override
  State<Componente> createState() => _ComponenteState();
}

class _ComponenteState extends State<Componente> {
  String? mensagem;
  // _ funçao publica
  void _printmsg() {
    // set state monitora o estado da variavel
// da classe statefull
    setState(() {
      mensagem = "Mobile";
    });
  }

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
            child: Image.asset(""),
          ),
          Text(
            "${widget.nome_c}",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.red,
                width: 300,
                height: 80,
                child: Text(
                  "QTDE:",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.start,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Cont ++");
                  },
                  child: Icon(Icons.add)),
            ],
          ),
          ElevatedButton(onPressed: _printmsg, child: Text("Mensagem")),
        ],
      ),
    );
  }
}
