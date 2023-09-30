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
      // Remove a faixa de debug
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: const MyHomePage(title: 'Aplicativo mobile 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _zeraCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                 crossAxisAlignment: CrossAxisAlignment.center,
                  Container(
                  color: Colors.red,
                  width: 450,
                  height: 100,
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    'SENAI ROBERTO MANGE',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.blue,
              width: 800,
              height: 100,
              alignment: AlignmentDirectional.center,
              child: Text(
                "Aplicativo Mobile",
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
              alignment: AlignmentDirectional.center,
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Botão pressionado");
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Desenvolvimento Mobile 1"),
                  ),
                );
              },
              child: Text("Mensagem"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _zeraCounter,
            tooltip: 'Zerar',
            child: Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
