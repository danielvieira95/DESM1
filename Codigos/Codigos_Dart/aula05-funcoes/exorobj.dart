class Casa
{
 // Atributos definem caracteristicas
// Métodos definem o que os objetos podem fazer
String? cor;
// Metodo
void abrirJanela(int qtdeJanelas)
{
   print("Abrir Janela, qtde janelas $qtdeJanelas");
}
void abrirPorta()
{
  print("Abrir porta da casa $cor");
}
void abrirCasa()
{
  this.abrirJanela(2);
  this.abrirPorta();
}
}
void main()
{
    String nome = "Daniel";
    Casa minhaCasa = new Casa(); // instancia a classe em um objeto new é opcional no dart
    Casa minhaCasa2 = new Casa();
    minhaCasa.cor= "Blue";
    minhaCasa2.cor = "Vermelho";
    //minhaCasa.abrirJanela(2);
   // print(minhaCasa.cor);
   // minhaCasa2.abrirPorta();
    minhaCasa2.abrirCasa();
    minhaCasa.abrirCasa();
}