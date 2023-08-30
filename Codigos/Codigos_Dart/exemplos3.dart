import "dart:io";
void main()
{
  // Variavel que armazena numeros inteiros
  int idade = 28;
  print("Idade: $idade");
  // Variavel que armazena numeros decimais
  double raio = 10.25;
  print("Raio: $raio");
  // Variavel que armazena caracteres  e textos
  String nome = "Daniel";
  print("Ola $nome, seja bem vindo");
  //Variavel que armazena verdadeiro ou false
  bool ligado = true;
  print("Ligado: $ligado");
  // Variavel que guarda uma lista genérica
  List numerosgenericos = [10,"Daniel", true,20];
  print(numerosgenericos);
  // Variavel que guarda uma lista de numeros inteiros
  List<int>numerosinteiros = [10,20,30,40];
  print(numerosinteiros);
  //Variavel que guarda um dicionário  com chave e valor em formato texto
  Map<String, String> nome_sobrenome = {"Daniel": "Vieira","Senai": "Roberto Mange"};
  print(nome_sobrenome);
  // Variavel sem tipo pré definido, seu tipo é igual ao tipo do primeiro valor que recene
  var sobrenome = "Vieira";
  print(sobrenome);

  //Constantes
  const double pi =3.1416;
  print("O valor de pi é $pi");
  // Variavel dinamica
  dynamic x= 10;
  print(x);


}