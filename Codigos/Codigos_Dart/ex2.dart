import 'dart:io';

void main() {
  print('Digite um numero:');

 var n1 = int.parse(stdin.readLineSync()!);
 var n2 = int.parse(stdin.readLineSync()!);
  int soma = n1 +n2;
  if(n1>n2)
  {
    print("N1 é maior do que n2");
  }
  else
  {
      print("N2 é maior do que n1");
  }
 print("A Soma de $n1 e $n2 é $soma");
}