// Classe pai
class Alimento {
  String sabor;
  String nome;
  String cor;
  double peso;
  Alimento(this.sabor, this.nome, this.cor, this.peso);
}

class Fruta extends Alimento {
  int diasdesdecolheita;
  // Cria o construtor
  Fruta(String sabor, String nome, String cor, double peso,
      this.diasdesdecolheita)
      : super(sabor, nome, cor, peso);

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
  Fruta uva = Fruta("Doce", "Uva", "Roxa", 100, 30);
  uva.estaMadura(20);
}
