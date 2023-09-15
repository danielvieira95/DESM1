/* Função anônima
06/09/2023
*/
void cal_salario(String nome, double sal, Function f) {
  print("Nome: $nome");
  print("Salario $sal");
  f();
}

void main() {
  cal_salario("Daniel", 5000, () {
    int a, b, soma;
    a = 5;
    b = 6;
    soma = a + b;
    print("Bonus R\$ 50");
    print("Soma $soma");
  });
  cal_salario("Silvio", 3500, () {
    print("Bonus R\$ 100");
  });
}
