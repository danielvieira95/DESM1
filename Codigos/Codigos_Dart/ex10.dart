import 'dart:io';

void main() {
  const int quantidadeValores = 20;
  List<double> temperaturas = [];

  for (int i = 0; i < quantidadeValores; i++) {
    stdout.write('Digite a temperatura ${i + 1}: ');
    double temperatura = double.parse(stdin.readLineSync()!);
    temperaturas.add(temperatura);
  }

  double soma = 0;
  double maior = double.negativeInfinity;
  double menor = double.infinity;

  for (double temperatura in temperaturas) {
    soma += temperatura;

    if (temperatura > maior) {
      maior = temperatura;
    }

    if (temperatura < menor) {
      menor = temperatura;
    }
  }

  double media = soma / quantidadeValores;

  print('Média das temperaturas: $media');
  print('Maior temperatura digitada: $maior');
  print('Menor temperatura digitada: $menor');
}
