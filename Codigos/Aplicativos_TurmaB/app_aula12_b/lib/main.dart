import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Retira faixa debug do app,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplicativo Tarefas"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.blue,
                height: 200,
                width: 200,
                child: Text(
                  "Mobile",
                  style: TextStyle(fontSize: 32, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
                child: Text(
                  "Senai",
                  style: TextStyle(fontSize: 48, color: Colors.white),
                  textAlign: TextAlign.center, // Alinhamento do texto
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print("Aplicativo Flutter");
                      },
                      child: Text("Mensagem")),
                  ElevatedButton(
                      onPressed: () {
                        print("Desenvolvimento Mobile 1");
                      },
                      child: Text("Mensagem 2")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
