/*double calc_salario(double salario, int bonus)
{
  return  salario - (0.1*salario) +bonus;
}
void main()
{
  double total_s;
  total_s = calc_salario(5000,1000);
  print('Salario total R $total_s');
}*/
double calc_salario(double salario, int bonus)=> salario - (0.1*salario) +bonus;

void main()
{
  double total_s;
  total_s = calc_salario(5000,1000);
  print('Salario total R $total_s');
}