import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTexto();
}

class _CampoTexto extends State<CampoTexto> {
  // Permite monitorar o campo de texto para salvar o texto digitado em uma variável
  TextEditingController _textEditingController = TextEditingController();
  String? _a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo Aula 12 - Campo Texto"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              // Permite a entrada de texto pelo usuario
              keyboardType: TextInputType.emailAddress,
              // Insere um label na caixa de texto
              decoration: InputDecoration(labelText: "Digite um parâmetro"),
              // TextInputType.text - texto
              // TextInputType.number - numero
              style: TextStyle(fontSize: 28),
              /*onChanged: (String texto) {
                print("O texto digitado é ${texto}");
              },*/
              // On submited só vai aparecer o texto quando o usuario apertar ok
              /* onSubmitted: (String texto) {
                print("O texto digitado é ${texto}");
              }*/
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _a = _textEditingController.text;
                });

                print("Texto digitado $_a");
              },
              child: Text("Salvar")),
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
            child: Text(
              " $_a",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
