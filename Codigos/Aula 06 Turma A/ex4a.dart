class Usuario {
  String? user;
  String? pass;
  String? cargo;
  Usuario(String usuario, String senha) {
    this.user = usuario;
    this.pass = senha;
    print("Configurações iniciais");
  }
  Usuario.diretor(this.user, this.pass) {
    this.cargo = "diretor";
    print("Libera privilégios para " + this.cargo!);
  }
  void autenticar() {
    //var usuario = "daniel";
    //var senha = "100";
    var usuario = "Daniel Vieira";
    var senha = "1408";

    if (this.user == usuario && this.pass == senha) {
      print("Usuário autenticado");
    } else {
      print("Usuário não autenticado");
    }
  }
}

void main() {
  //Usuario usuario = Usuario("daniel", "100");
  Usuario usuarioDiretor = Usuario.diretor("Daniel Vieira", "1408");
  usuarioDiretor.autenticar();
}
