/*
Orientação a objeto
classe
06/09/2023
*/
// Cria a classe chamada casa
class Casa {
  String? cor;
  double? preco;
  void abrirporta() {
    print("Porta aberta");
  }

  void abrirjanela() {
    print("Janelas abertas");
  }

  void abrirCasa(bool st) {
    if (st == true) {
      this.abrirjanela();
      this.abrirporta();
    } else {
      print("Janela fechada");
      print("Porta fechada");
    }
  }
}

void main() {
  // instancia o objeto chamado casa
  Casa minhaCasa = Casa();
  minhaCasa.cor = "Blue";
  minhaCasa.preco = 125000.00;
  print("A cor da casa é " + minhaCasa.cor!);
  print("O valor da casa   ${minhaCasa.cor!} é ${minhaCasa.preco}");
  minhaCasa.abrirjanela();
  minhaCasa.abrirporta();
  minhaCasa.abrirCasa(false);
}
