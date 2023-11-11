import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Lista de componentes Compra"),
          ),
          body: ListView(
            children: [
              Componente("Resistor", 2, "imagens/resistor.jpg"),
              Componente("Led", 3, "imagens/led.jpg"),
            ],
          )),
    );
  }
}

class Componente extends StatefulWidget {
  final String nome_c;
  final String img;
  int vc; // final antes do tipo da variavel
  // protege contra alteração acidental
  Componente(this.nome_c, this.vc, this.img, {super.key});

  @override
  State<Componente> createState() => _ComponenteState();
}

class _ComponenteState extends State<Componente> {
  String? mensagem;
  int qtde = 0;
  int valor_total = 0;
  // _ funçao publica
  void _printmsg() {
    // set state monitora o estado da variavel
// da classe statefull
    setState(() {
      mensagem = "Mobile";
    });
  }

  void _incqtde() {
    setState(() {
      qtde++;
    });
  }

  void _calctotal() {
    setState(() {
      valor_total = qtde * widget.vc;
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
            child: Image.asset(
              widget.img,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "${widget.nome_c}",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  color: Colors.white,
                  width: 300,
                  height: 80,
                  child: Text(
                    "QTDE: $qtde",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              ElevatedButton(onPressed: _incqtde, child: Icon(Icons.add)),
            ],
          ),
          Container(
            color: Colors.white,
            width: 300,
            height: 80,
            child: Text(
              "Valor total R\$: ${valor_total}",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(onPressed: _calctotal, child: Text("Total")),
        ],
      ),
    );
  }
}
