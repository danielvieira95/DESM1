import "dart:io";

void main() {
  int car1, car2, car3;
  List carros = [];
  print("Digite o valor do carro 1");
  car1 = int.parse(stdin.readLineSync()!);
  carros.add(car1);
  print("Digite o valor do carro 1");
  car2 = int.parse(stdin.readLineSync()!);
  carros.add(car2);
  print("Digite o valor do carro 3");
  car3 = int.parse(stdin.readLineSync()!);
  carros.add(car3);
  print(carros);
}
