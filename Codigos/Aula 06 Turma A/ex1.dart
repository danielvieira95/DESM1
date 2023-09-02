
void main()
{
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e amarela";
  String sabor = "Doce e cítrica";
  int diasdecolheita = 20;
  bool ismadura = funcEstaMadura(diasdecolheita);
  print(ismadura);
  


}

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