class Alimento {
  String nome;
  String sabor;
  String cor;
  double peso;
  // Cria construtor Alimento
  Alimento(this.nome, this.sabor, this.cor, this.peso);
}

// Implements pega os metodos da classe abstrata
class Fruta extends Alimento implements Descascar {
  bool? isMadura;
  Fruta(String nome, String sabor, String cor, double peso)
      : super(nome, sabor, cor, peso);

  void Madura(isMadura) {
    if (isMadura == true) {
      print("A fruta $nome está madura");
    } else {
      print("A fruta $nome não está madura");
    }
  }

  @override
  void separarTalheres() {
    print("Pegando a faca para descascar a fruta $nome");
  }

  @override
  void pegarVasilha() {
    print("Pegando vasilha");
  }

  @override
  void comeralimento() {
    print("Fruta $nome descascada pronta para comer");
  }
}

// Cria classe abstrata
abstract class Descascar {
  void separarTalheres();
  void pegarVasilha();
  void comeralimento();
}

class Uva extends Alimento implements Descascar {
  Uva(String nome, String cor, String sabor, double peso)
      : super(nome, cor, sabor, peso);
  @override
  void separarTalheres() {
    print("Não precisa pegar talher para descascar a fruta $nome");
  }

  @override
  void pegarVasilha() {
    print("Não precisa pegar vasilha para  a fruta $nome");
  }

  @override
  void comeralimento() {
    print("Fruta $nome pronta para comer");
  }
}

void main() {
  Fruta Laranja = Fruta("Laranja", "Doce", "Verde", 100);
  Laranja.Madura(true);
  Laranja.separarTalheres();
  Laranja.pegarVasilha();
  Laranja.comeralimento();

  Uva uva = Uva("Uva", "Doce", "Roxa", 20);
  uva.separarTalheres();
  uva.pegarVasilha();
  uva.comeralimento();
}
