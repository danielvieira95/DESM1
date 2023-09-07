void calc_salario(double sal, Function f) {
  print("Salario $sal");
  f();
}

void calc_bonus() {
  print("Bonus R\$ 50.00");
}

void main() {
  calc_salario(5000, calc_bonus);
}
