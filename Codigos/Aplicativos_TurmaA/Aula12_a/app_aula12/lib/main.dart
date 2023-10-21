import 'package:flutter/material.dart'; // importa o pacote para utilizar os designs para Android

// Função principal do aplicativo
void main() {
  // runAPP função que chama o material app para exibir a tela do aplicativo
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStatefull(),
  ));
}

var _texto = "Daniel Vieira"; // Variavel publica

// Cria a classe do home statefull
class HomeStatefull extends StatefulWidget {
  const HomeStatefull({super.key});

  @override
  State<HomeStatefull> createState() => _HomeStatefull();
}

class _HomeStatefull extends State<HomeStatefull> {
  var _texto = "Daniel Vieira";
  @override
  Widget build(BuildContext context) {
    print("Build chamado");
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicativo aula 12'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _texto = "Daniel";
                  });
                },
                child: Text("Clique aqui"),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _texto = "Fluter";
                    });
                  },
                  child: Text("Texto 2")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _texto = "";
                    });
                  },
                  child: Text("Limpar")),
              Text(
                "Nome: $_texto ",
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
