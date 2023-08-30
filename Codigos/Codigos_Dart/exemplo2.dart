import "dart:io";
void main()
{
  var nome;
  print("Digite seu nome");
  nome = stdin.readLineSync()!;
  print("Digite sua idade");
  int idade = int.parse(stdin.readLineSync()!);
  print("Nome: $nome, idade $idade anos ");

}