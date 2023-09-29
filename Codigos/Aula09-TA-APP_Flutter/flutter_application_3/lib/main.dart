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
    
       
      home: Container(color: Colors.white ,     
      child: Column(mainAxisAlignment:MainAxisAlignment.spaceAround,
      crossAxisAlignment:CrossAxisAlignment.center,
     
      children: [
        
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround, 
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Container(color:Colors.red,width:100,height:100),
          Container(color:Colors.orange, width: 100, height:100),
          Container(color: Colors.yellow, width:100, height:100),
          
         ],
        ),
        Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround, 
             crossAxisAlignment: CrossAxisAlignment.center,
             children:[
             Container(color: Colors.white,
             width:250,
             height:100,
             child: const Text("Aplicativo Teste",
             style: TextStyle(decoration: TextDecoration.none,fontSize: 22,fontStyle: FontStyle.normal),
             textAlign: TextAlign.center,          
             ),
              ),
              
              ElevatedButton(onPressed: (){
              print("Botão pressionado");
        }, 
        child: Text("Botão 1")),
             ],
        ),
         Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
        Container(color: Colors.blue, width:100, height:100),
        Container(color: Colors.amber, width:100, height:100),
        Container(color: Colors.green,width:100, height:100),
      ],
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(color: Colors.blueGrey, width:100, height:100),
        Container(color: Colors.amber, width:100, height:100),
        Container(color: Colors.purple,width:100, height:100),
        
      ], 
      ),
      ],),
      ),
     
    );
  }
}

