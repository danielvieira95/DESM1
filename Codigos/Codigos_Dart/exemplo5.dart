import "dart:io";
void main()
{
   // Repetição
   for (int i=0; i<5; i++)
   {
      print(i);
   }
   // Loop while
   int j=0;
   while(j<5)
   {
     print(j);
     j++;
   }
   // Loop do while
   int k= 0;
   do
   {
      print(k);
      k++;

   }while(k<5);
   List numeros =[0,1,2,3,4];
   // Foreach
   //for(variavel dentro do conjunto)
   for(int numero in numeros)
   {
      print(numeros);
   }
   List valores=[];
   print("Digite um numero");
   int n1 = int.parse(stdin.readLineSync()!);
   valores.add(n1);
   print("Numero adicionado a lista \n");
   print(valores);

}