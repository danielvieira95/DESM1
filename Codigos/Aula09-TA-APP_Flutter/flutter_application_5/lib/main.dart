import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MeuBotao("Mensagem 1"),
            MeuBotao("Mensagem 2"),
            ElevatedButton(onPressed: (){print("Daniel");}, child: Text("Botão 1"),style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),), ),
            ElevatedButton(onPressed: (){
              print("Desenvolvimento Mobile 1");
              ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
        content: Text("Desenvolvimento Mobile 1"),
      ),);

   } , child: Text("Botão 2")),
          ],
        ),
      ),
    );
  }
}
@immutable
class MeuBotao extends StatelessWidget {
  final String mensagem;

 const MeuBotao(this.mensagem);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _mostrarMensagem(context, mensagem);
      },
      child: Text(mensagem),
    );
  }

  void _mostrarMensagem(BuildContext context, String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }
}
