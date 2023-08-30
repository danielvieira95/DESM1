// Funçoes
import 'dart:html';

void escreverBemVindo()
{
  print("Seja bem vindo");
}
// Quando a função tem apenas um comando
void escrever()=>print("Erro");
// Função com passagem de parâmetros
void calcularSoma(double a, double b)
{
  double resultado =a +b;
  print(resultado);
}
// Função com retorno 
double calcula_sub(double a, double b)
{
  double resultado = a-b;
  return resultado;
}

// Exemplo reduzido de uma função que retorna valor
double calcular_area_circulo(double raio)+> 3.14 *raio*raio;

// Função com parÂmetros opcionais utiliza-se os parâmetros dentro das chaves
void exibirnomecursoidade(String nome,{int idade, String curso})
{
  if idade !=null && curso != null)
  {
    print("$nome tem $idade anos e faz o curso de $curso");
  }
  else if(idade == null && curso != null)
  {
    print("$nome faz o curso de $curso");
  }
  else if(idade != null && curso == null)
  {
     print("$nome tem $idade anos");
  }
  else
  {
    print("Ola $nome");
  }
  // Passar funções como parâmetros
  void calcular(double a, double b, Function funcao)
  {
    funcao(a,b);
  }
  // Funçao principal
  void main()
  {
    // Executando a função bem vindo
    escreverBemVindo();
    //Executando função erro
    escrever();
    // Executando função soma
    calcularSoma(10, 5);
    // Executando a função subtracao
    print(calcula_sub(50, 20))
    // Executando a função que calcula a área do circulo
    print(calcular_area_circulo(10));
    // Executando a função exibir nome curso idade
    exibirnomecursoidade("Daniel");
    // Executando a função exibir nome, idade
    exibirnomecursoidade("Daniel",27);
      // Executando a função exibir nome, idade,curso
    exibirnomecursoidade("Daniel",27, "Engenharia Eletrica"); 
    //Executando a função calcular
    calcular(30,20,calcularSoma);
    // Executando a função calcular (A,b,função) como foi passada a calcular soma
    calcular(30,20,a,b)
    {
      var resultado = a *b;
      print(resultado);
    }


  }
  }

  }
}