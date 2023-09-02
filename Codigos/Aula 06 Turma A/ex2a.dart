class Carro {
  String? cor;
  String? modelo;
  int? ano;
  String? tipocombustivel;

  void ligarCarro(bool st) {
    if (st == true) {
      print("Carro ligado");
    } else {
      print("Carro desligado");
    }
  }

  void subirvidro() {
    print("Vidro aberto");
  }

  void descervidro() {
    print("Vidro fechado");
  }

  void exibeinfocarro() {
    print("Modelo do carro " + this.modelo!);
    print("Cor do carro " + this.cor!);
    print("Ano do carro $ano");
  }
}

void main() {
  Carro Carro1 = Carro();
  Carro1.cor = "Vermelho";
  Carro1.modelo = "TIIDA SL";
  Carro1.ano = 2023;
  Carro1.tipocombustivel = "Gasolina";
  Carro1.exibeinfocarro();
  Carro1.ligarCarro(true);
  Carro1.subirvidro();
  Carro1.ligarCarro(false);
}
