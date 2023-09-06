import "dart:io";

void exibir_dados(String? nome, {String? cpf, String? salario}) {
  print("Nome: $nome");
  print("CPF: $cpf");
  print("Salario: $salario");
}

void main() {
  print("Digite seu nome");
  String? entrada = stdin.readLineSync()!;
  print("Digite seu CPF");
  String? CPF = stdin.readLineSync()!;
  print("Digite seu salario");
  String? sal = stdin.readLineSync()!;

  exibir_dados(entrada, cpf: CPF, salario: sal);
}
