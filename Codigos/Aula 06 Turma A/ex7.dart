class Usuario {
  
  String ? usuario;
  String? senha;
  String? cargo;
  /*
  Usuario(String usuario, String senha){
    this.usuario = usuario;
    this.senha = senha;
    print("Configurações inicias do objeto");
  }*/
  
  Usuario(this.usuario, this.senha);
  
  //Named constructor
  Usuario.diretor(this.usuario, this.senha){
    this.cargo = "diretor";
    print("Libera privilégios para o " + this.cargo! );
  }
    
  void autenticar(){
    
    //Recuperar de um banco de dados
    var usuario = "daniel";
    var senha = "100";
    
    if( this.usuario == usuario && this.senha == senha ){
      print("Usuário autenticado");
    }else{
      print("Usuário não autenticado");
    }
    
  }
  
}

void main() {
  
  //Usuario usuario = Usuario("daniel", "100");
  
  Usuario usuarioDiretor = Usuario.diretor("daniel", "100");
  
  //Digitados pelo usuario do seu App
  //usuario.usuario = "jamilton@gmail.com";
  //usuario.senha = "12345";
  
  usuarioDiretor.autenticar();
}