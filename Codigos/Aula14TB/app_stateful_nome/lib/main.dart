import 'package:flutter/material.dart';

void main() {
  runApp(App_aula14());
}

// Cria uma classe com um Widget personalizável do tipo Stateless
class App_aula14 extends StatelessWidget {
  // Construtor
  const App_aula14({super.key});

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
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
