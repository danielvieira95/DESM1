/*
Funcao anomina
*/
void cal_salario(String nome,double sal, Function f)
{
  print("Salario $sal");
  f();
}
void main()
{
  cal_salario("Daniel",4500,(){
    print("Bonus 50");
  });
    cal_salario("Silvio",3500,(){
    print("Bonus 100");
  });
}