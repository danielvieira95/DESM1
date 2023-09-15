class Fruta {
  String sabor;
  String nome;
  String cor;
  double peso;
  int diasdesdecolheita;
  // Cria o construtor
  Fruta(this.sabor, this.nome, this.cor, this.peso, this.diasdesdecolheita);

// Cria os métodos
  void estaMadura(int qtde_dias) {
    if (qtde_dias >= diasdesdecolheita) {
      print("A fruta $nome está madura");
    } else {
      print("A fruta $nome não está madura");
    }
  }
}

class Legumes {
  String sabor;
  String nome;
  String cor;
  double peso;
  bool? isprecisaCozinhar;
  Legumes(this.sabor, this.nome, this.cor, this.peso, {this.isprecisaCozinhar});
  void precisaCozinhar(isprecisaCozinhar) {
    if (isprecisaCozinhar == true) {
      print("O $nome está pronto");
    } else {
      print("O $nome nao precisa cozinhar");
    }
  }
}

void main() {
  Fruta pera = Fruta("Doce", "Pera", "Verde", 100, 20);
  pera.estaMadura(30);
  Legumes Beterraba =
      Legumes("Amargo", "Beterraba", "Roxo", 50, isprecisaCozinhar: true);
  Beterraba.precisaCozinhar(false);
}
