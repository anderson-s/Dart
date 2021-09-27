import 'dart:math';
main(){
  somaComPrint(2, 3);
  somaComPrint(5, 6);
  somarAleatoriamente();//Chamando a função

}
//Funções são blocos de código que possuem um nome, além de uma sequência de instruções que podem ter parametros de entradas e retonar algo
//Funções com parâmetros de entrada
//void não retorna valores
somaComPrint(int a, int b){
  print(a + b);
}
//Funções com parâmetros
void somarAleatoriamente(){
  int valor1 = Random().nextInt(11);
  int valor2 = Random().nextInt(11);
  print("Os valores são: $valor1 e $valor2");
  print(valor1 + valor2);
}