class Usuario
{
   String ?  usuario;
   String ?  senha;
   String ? cargo;
   /* Usuario(String usuario, String senha)
   {
     this.usuario = usuario;
     this.senha = senha;
     print("Configurações iniciais do objeto");

   }
   */
   this.cargo = "Diretor";
   Usuario(this.usuario, this.senha);
  // Criando outro construtor
  Usuario.diretor(this.usuario, this.senha)
  {
    
    print("Libera privilégios para o + " ,this.cargo);
  }
   void autenticar()
   {
    var usuario = "Daniel Vieira";
    var senha = "1025";
    if(this.usuario == usuario && this.senha == senha)
    {
       print("Login correto");
    }
    else{
      print("Login incorreto");
    }
   }
}

void main()
{
  Usuario usuario = Usuario("Senai","senai@2023");
 // usuario.usuario = "Senai";
//  usuario.senha = "senai@2023";
 Usuario usuarioDiretor = Usuario.diretor("Daniel Vieira","1025");
  usuario.autenticar();
}