class Casa {
  // Atributos definem características
  String? cor;
// Metodo
  void abrirJanela(int qtde_j) {
    print("Abrir janela da casa $cor");
  }

  void abrirPorta() {
    print("Abrir porta da casa $cor");
  }

  void abrirCasa() {
    this.abrirJanela(2);
    this.abrirPorta();
  }
}

void main() {
  Casa minhaCasa = Casa(); // Instancia o objeto Casa
  Casa Casa2 = Casa();
  minhaCasa.cor = "Blue";
  print(minhaCasa.cor);
  int res = calc(4, 5);
  minhaCasa.abrirJanela(2);
  minhaCasa.abrirPorta();
  print("Soma $res");
  Casa2.cor = "Vermelha";
  print(Casa2.cor);
  Casa2.abrirJanela(3);
}

int calc(int a, int b) {
  return a + b;
}
