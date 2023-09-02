void main()
{
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasdecolheita = 20;
  int qtdedias_faltam;
  bool ismadura = funcEstaMadura(diasdecolheita);
  print(ismadura);
  mostrarmadura("Uva",10, cor:"Roxa");
  qtdedias_faltam= funcquantosdiasMadura(diasdecolheita);
  print(qtdedias_faltam);

}
// Posicionais obrigatórios
// Nomeados opcionais
// Parâmetros padrão
// Modificador required

bool funcEstaMadura(int dias)
{
   if(dias >=30)
  {
      return true;

  }
  else{
    return false;
  }
}
// required 
void mostrarmadura(String nome, int dias, {String? cor})
{
  if(dias>=30)
  {
     print("A $nome está madura");
  }
  else{
          print("A $nome não está madura"); 
  }
  if(cor!=null){
     print("A $nome é $cor");
  }
}

//Função quitanda
void funcfrutas({required String? nome, required double ? peso, String? cor,  String sabor = "doce"})
{

}
int funcquantosdiasMadura(int dias)
{
  int diasmadura = 10;
  int quantosdiasfaltam = dias - diasmadura;
  return quantosdiasfaltam;
}