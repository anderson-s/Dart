main(){
  print("Salve Silva");
  int numero = 10;
  double decimal = 1.5;
  bool logico = true;
  dynamic variavel = 'teste';
  variavel = 123;
  variavel = false;
  
  var nome = ["Andeson", "Silva", "Doido"];
  nome.add("Samuel");
  nome.add("Levy");

  print(nome.length); //Mostrou o tamanho da lista
  print(nome[4]); //Mostrou o elemento da posicao 5 --> n -1

  Set<int> conjunto = {0, 1, 2, 3, 4, 5, 6, 7, 8 , 9, 10};
  print(conjunto.length);
  print(conjunto is Set);
  //Chave Valor
  Map<String, double> notasDosAlunos = {
    'Andeson': 5.0,
    'Silva': 8.0,
  };
  for(var chave in notasDosAlunos.keys){
    print('chave = $chave');
  }
  for(var valor in notasDosAlunos.values){
    print('valores = $valor');
  }
  
  for(var registro in notasDosAlunos.entries){
    print('${registro.key} = ${registro.value}');
  }
}