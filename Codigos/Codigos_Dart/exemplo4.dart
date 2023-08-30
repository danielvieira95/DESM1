// Estruturas condicionais
import "dart:io";
void main()
{
 double media = 4.9;
 if (media<6.0)
 {
   print("Reprovado");
 }
 else
 {
   print("Aprovado");
 }
 // Operador IF ternário
 print(media <6.0 ? "Reprovado !": "Aprovado");
 /*
  Toda variavel declarada e que não recebe valor, automaticamente é nula.  
 */
var linguagem;
if(linguagem == null)
{
   print(linguagem);
}
linguagem = "Dart";
if(linguagem != null)
{
  print(linguagem);
}
print("Digite uma linguagem de programação");
linguagem = stdin.readLineSync();
// Estrutura condicional switch case
switch(linguagem)
{
  case "Dart":
  print("É Dart");
  break;
  case "C":
  print("É C");
  break;
  case "Python":
  print("É Python");
  break;

}

}
