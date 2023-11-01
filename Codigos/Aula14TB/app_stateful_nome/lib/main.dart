import 'package:flutter/material.dart';

void main() {
  runApp(App_aula14());
}

// Cria uma classe com um Widget personalizável do tipo Stateless
class App_aula14 extends StatefulWidget {
  // Construtor
  const App_aula14({super.key});

  @override
// State variavel de estado , essa variável que vai monitorar o estado app
// para realizar alterações dinâmicas na tela
  State<App_aula14> createState() => _App_aula14State();
}

class _App_aula14State extends State<App_aula14> {
  String _msg = "MOBILE";
  @override // Polimorfismo permite sobreescrever os comandos das
  // funções
  // Widget build método para reconstruir a tela quando a
  // classe é chamada
  Widget build(BuildContext context) {
    // Material APP permite criar app para android
    return MaterialApp(
      // Scaffold layout semi pronto para criar o app
      home: Scaffold(
        // appBar -  Barra do aplicativo
        appBar: AppBar(
          title: Text("Aplicativo Aula 14"),
        ),
        body: Column(
          // mainAxisAlignment alinhamento principal dos elementos
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 500, // Largura
              height: 200, // altura
              child: Text(
                _msg,
                style: TextStyle(fontSize: 28),
                textAlign:
                    TextAlign.center, // alinha texto no centro do container
              ), // child estabelece
              // relação com 1 elemento apenas
            ),
            // Cria um botão na tela do aplicativo
            // on pressed parametro que botão que vai chamar
            // a ação a ser executada
            // child estabele relação do botão com algo Text, Icon
            ElevatedButton(
                onPressed: () {
                  print("Botão pressionado");
                  setState(() {
                    // função set state que irá alterar o estado do widget
                    _msg = "SENAI"; // cria variavel msg
                  });
                },
                child: Text("Mensagem")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _msg = "DESENVOLVIMENTO MOBILE 1"; // mensagem 2
                  });
                },
                child: Text("Mensagem 2")),
          ],
        ),
      ),
    );
  }
}
