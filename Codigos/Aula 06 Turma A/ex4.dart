class Usuario
{
  String ? usuario;
  String ? senha;
  String ? cargo;
/*
  Usuario(String usuario, String senha)
  {
    this.usuario = usuario;
    this.senha = senha;
    print("Configurações iniciais do objeto");
  }
  */
  // construtor
  Usuario(this.usuario,this.senha);
  Usuario.diretor(this.usuario, this.senha){
    this.cargo = "diretor";
    print("Libera privilégios para o " + this.cargo);
  }
void autenticar()
{
  var usuario = "Senai";
  var senha = "senai@mange";
  if(this.usuario == usuario && this.senha == senha)
  {
     print("Usuario autenticado");
  }
  else
  {
    print("Usuario não autenticado");
  }
}

}


void main()
{
  //Usuario usuario = Usuario("1","senai@mange");
  Usuario usuariodiretor = Usuario.diretor("Daniel Vieira","123456");
  usuariodiretor.autenticar();
}