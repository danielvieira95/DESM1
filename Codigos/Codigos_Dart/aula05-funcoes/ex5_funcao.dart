void exibir_dados(String nome,{ var idade, double? h})
{
  var nova_h = h?? 0;
  print("Nome $nome");
  print("Idade: $idade");
  print("Altura: $nova_h");
}
void main()
{
  exibir_dados("Daniel");
}