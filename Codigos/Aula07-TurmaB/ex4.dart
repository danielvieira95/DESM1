double cal_sal(double sal, double desc, Function f) {
  f();
  return sal = sal - (sal * desc);
}

void exibe_msg() {
  print("Dia de pagamento ");
}

void main() {
  double salario = cal_sal(5000, 0.1, exibe_msg);
  print("O salário foi de R\$ $salario");
}
