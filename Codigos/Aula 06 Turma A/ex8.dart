class Usuario {
  String? usuario;
  String? senha;
  String? cargo;
  Usuario(this.usuario, this.senha);
  Usuario.diretor(this.usuario, this.senha) {
    this.cargo = "diretor";
    print("Libera privilégios para " + this.cargo!);
  }
  //Usuario(this.usuario, this.senha);
  void autenticar() {
    var usuario = "silvio";
    var senha = "200";
    if (this.usuario == usuario && this.senha == senha) {
      print("Usuario autenticado");
    } else {
      print("Usuario não autenticado");
    }
  }
}

void main() {
  Usuario usuarioDiretor = Usuario("silvio", "100");
  //Usuario usuario = Usuario("d", "100");
  usuarioDiretor.autenticar();
  //usuario.autenticar();
}
