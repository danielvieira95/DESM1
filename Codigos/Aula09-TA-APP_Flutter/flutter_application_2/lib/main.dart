import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP Sorte Danuino',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TextEditingController> controllers = List.generate(
    15,
    (index) => TextEditingController(),
  );

  List<int> _parseNumbers() {
    List<int> numbers = [];
    for (TextEditingController controller in controllers) {
      String text = controller.text;
      try {
        int number = int.parse(text);
        if (number >= 1 && number <= 99) {
          numbers.add(number);
        } else {
          throw FormatException("Invalid number");
        }
      } on FormatException catch (_) {
        return [];
      }
    }
    return numbers;
  }

  List<List<int>> _combineNumbers(List<int> numbers) {
    List<List<int>> combinations = [];
    for (int i = 0; i < numbers.length - 2; i++) {
      for (int j = i + 1; j < numbers.length - 1; j++) {
        for (int k = j + 1; k < numbers.length; k++) {
          combinations.add([numbers[i], numbers[j], numbers[k]]);
        }
      }
    }
    return combinations;
  }

  void _showCombinations() {
    List<int> numbers = _parseNumbers();
    if (numbers.length == 15) {
      List<List<int>> combinations = _combineNumbers(numbers);
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Combinações Possíveis"),
          content: Container(
            height: min(combinations.length * 30.0, 300),
            width: 200,
            child: ListView.builder(
              itemCount: combinations.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(combinations[index].toString()),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Fechar"),
            ),
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Por favor, insira 15 números válidos entre 1 e 99."),
        ),
      );
    }
  }

  void _limparCampos() {
    for (var controller in controllers) {
      controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APP Sorte Danuino')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Digite 15 números entre 1 e 99:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(
                      controller: controllers[index],
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Número ${index + 1}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _limparCampos,
            child: Icon(Icons.delete),
          ),
          SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _showCombinations,
            child: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}