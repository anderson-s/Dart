import 'dart:io';
import 'dart:math';
main(){
  print("Digite o valor máximo");
  dynamic valor = stdin.readLineSync();
  int numero = int.parse(valor); 
  print(somarAletaoriamente(numero));
  print(somarAletaoriamente());

  print(data(05, 12, 2000));
  print(data(05, 12));
  print(data(05));
  print(data());
}
//Um parâmetro opcional é representado por [] dentro da função
//Nesse caso o parametro vai assumir um valor 10, que será padrão caso não seja passado nenhum parametro
int somarAletaoriamente([int maximo = 11]){
  return Random().nextInt(maximo);
}
data([int dia = 1, int mes = 1,int ano = 2021]){
  print("$dia/$mes/$ano");
  // return dia.toString() + "/" + mes.toString() +"/"+ ano.toString();
  
}