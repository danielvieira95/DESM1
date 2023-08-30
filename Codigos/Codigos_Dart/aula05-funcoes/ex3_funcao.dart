void calc_salario(double salario)
{
  var total = salario - (0.1*salario);
  print(total);
}
void main()
{
  calc_salario(4000);
}