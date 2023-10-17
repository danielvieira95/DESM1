/*
Exemplo get e setters
*/

class Conta {
  double _saque = 0;
  double _saldo = 500;
  double get saque {
    return this._saque;
  }

  double get saldo {
    return this._saldo - this._saque;
  }

  // set para setar parametros
  set saque(double valor) {
    if (valor > 0 && valor < this._saldo) {
      this._saque = valor;
    } else {
      print("Saldo insuficiente");
    }
  }
}

void main() {
  Conta Rocky = Conta();
  Rocky.saldo;
  Rocky.saque = 300;
  print("Saldo conta Rocky ${Rocky.saldo}");
  print("Saque conta Rocky ${Rocky.saque}");
}
