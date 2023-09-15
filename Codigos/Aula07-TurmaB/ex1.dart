/* Função com passagem de parâmetros opcionais
06/09/2023
*/

void exibir_dados(String nome, {int? idade, double? h}) {
  print("Nome: $nome");
  print("Idade: $idade");
  print("Altura: $h");
}

void main() {
  //exibir_dados("Daniel");
  exibir_dados("Daniel", idade: 28, h: 1.75);
}
