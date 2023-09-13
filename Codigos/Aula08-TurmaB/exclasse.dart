// Criar classe chamada casa
class Casa {
  String? cor; // Atributo cor
  double? valor;

// criar metodos
  void abrirJanela(int qtde_janelas) {
    print("Abrir janela, qtde de janelas $qtde_janelas");
  }

  void abrirPorta() {
    print("Porta aberta");
  }

  void abrirCasa() {
    this.abrirJanela(2);
    this.abrirPorta();
  }
}

void main() {
  // Instancia a classe com o objeto Casa
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Blue";
  print(minhaCasa.cor);
  minhaCasa.abrirPorta();
  minhaCasa.abrirJanela(3);
  minhaCasa.abrirCasa();
  Casa imovel1 = Casa();
  imovel1.cor = "Vermelho";
  print(imovel1.cor);
  imovel1.valor = 550.000;
  print("O valor do imovel 1 é R\$  ${imovel1.valor} ");
}
