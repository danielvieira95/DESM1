import 'package:flutter/material.dart'; // Pacote que permite criar os widgets para SO Android

// Função principal do aplicativo
void main() {
// Run App função que chama a tela do aplicativo
// MaterialApp é a função que construiremos os Widgets
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo - Aula 13"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // alinhamento principal da Coluna
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.blue, width: 80, height: 80),
              Text(
                "Mobile",
                style: TextStyle(fontSize: 30),
              ),
              Container(color: Colors.red, width: 80, height: 80),
              ElevatedButton(
                  onPressed: () {
                    print("Aplicativo botão pressionado");
                  },
                  child: Text("Mensagem")),
            ],
          ),
        ),
      ),
    ),
  );
}
