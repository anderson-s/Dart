main(){
  //Primeiro For
  for(int i = 1; i <= 10; i++){
    print(i);
  }
  print("Fim do primeiro For!!!");

  //Segundo For
  for(int i = 100; i >= 0; i-=4){
    print("O valor de i é $i");
  }
  print("Fim do segundo For!!!");

  //Terceiro for
  int a = 0;
  for(; a < 10; a++){
    print("a = $a");
  }

  //For in
  var notas = [9.0, 9.2, 8.8];
  for(var nota in notas){
    print("O valor da nota é $nota.");
  }

  var coordenadas = [[1,3], [4,5], [6,7]];
  for(var coordenada in coordenadas){
    for(var ponto in coordenada){
      print("O valor do ponto é $ponto");
    }
  }
   //For 3
  //  Map<String, double> notas = {
  //    'Andeson':9.0,
  //    'Silva':10.0,
  //    'Ana': 5.0,
  //  };
  //  for (String nome in notas.keys) {
  //    print("O nome do aluno é: $nome é e a nota dele é ${notas[nome]}");
  //  }
   
  //  for (var nota in notas) {
  //    print("O nome do aluno é: $nota");
  //  }
  //  for (var registro in notas.entries){
  //    print("O ${registro.key} tem nota ${registro.value}");
  //  }
}