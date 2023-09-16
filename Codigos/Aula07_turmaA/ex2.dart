class Animal {
  String nome;
  String cor;
  String altura;
  double peso;
  // Construtor
  Animal(this.nome, this.cor, this.altura, this.peso);
  void animalcomeu(bool st_al) {
    if (st_al == true) {
      print("O animal $nome se alimentou");
    } else {
      print("O animal $nome não se alimentou");
    }
  }

  void animaldormiu(bool st_d) {
    if (st_d == true) {
      print("O animal $nome dormiu");
    } else {
      print("O animal $nome não dormiu");
    }
  }
}

class Cachorro extends Animal {
  bool? ismanso;
  Cachorro(String nome, String cor, String altura, double peso)
      : super(nome, cor, altura, peso);
  void cachorroManso(ismanso) {
    if (ismanso == true) {
      print("O cachorro $nome é manso");
    } else {
      print("O cachorro $nome não é manso");
    }
  }
}

class Tigre extends Animal {
  Tigre(String nome, String cor, String altura, double peso)
      : super(nome, cor, altura, peso);
  void TigreAmigavel(bool isamigavel) {
    if (isamigavel == true) {
      print("O tigre $nome é amigavel");
    } else {
      print("O tigre $nome não é amigavel");
    }
  }
}

class Gato extends Animal {
  Gato(String nome, String cor, String altura, double peso)
      : super(nome, cor, altura, peso);
  void Gatoamigo(bool isamigo) {
    if (isamigo == true) {
      print("O gato $nome é amigo");
    } else {
      print("O tigre $nome não é amigo");
    }
  }
}

void main() {
  Cachorro Nina = Cachorro("Nina", "Preto e branca", "media", 40);
  Tigre Rocky = Tigre("Rocky", "Cinza", "Alto", 55);
  Gato Garfield = Gato("Tesla", "Laranja", "Baixo", 30);
  Nina.animalcomeu(true);
  Rocky.TigreAmigavel(false);
  Garfield.animaldormiu(true);
  Nina.cachorroManso(true);
  Rocky.animaldormiu(true);
  Rocky.TigreAmigavel(true);
}
