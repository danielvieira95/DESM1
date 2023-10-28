import 'package:flutter/material.dart'; // Permite criar os widgets para SO Android

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Lista de componentes"),
      ),
      body: ListView(
        children: [
          ListaComponente('Resistor', 'assets/resistor.JPG'),
          ListaComponente('Diodo', 'assets/diodo.JPG'),
          ListaComponente('Led', 'assets/led.JPG'),
          ListaComponente('Transistor', 'assets/transistor.JPG'),
          ListaComponente('Capacitor', 'assets/capacitor.JPG'),
        ],
      ),
    ),
  ));
}

class ListaComponente extends StatelessWidget {
  final String componente, imgc;
  ListaComponente(this.componente, this.imgc,
      {super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Container(
            color: const Color.fromARGB(255, 121, 68, 255),
            width: 400,
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.blueGrey,
                height: 120,
                width: 100,
                child: Image.asset(
                  imgc,
                  fit: BoxFit.fill,
                ), // Boxfit. Fill a image preenche todo container
              ),
              Text(
                componente,
                style: TextStyle(fontSize: 22),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Nome do componente $componente");
                  },
                  child: Text("Exibir")),
            ],
          ),
        ]),
        Container(
          color: Colors.blue,
          width: 400,
          height: 20,
        ),
      ],
    );
  }
}
