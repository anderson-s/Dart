import 'dart:math';
main(){
  //Atribuindo o resultado de uma função para a variável
  int resultado = somar(1, 2);
  print(resultado);

  //Imprimindo função 
  print(somarAleatoriamente());//Além dessa forma também pode-se representar por meio da interpolação: 
  //print("O reseultado é: ${somarAleatoriamente()}");

}
//Para a função retornar valores, é necessário especificar um tipo na mesma
int somar(int a, int b){
  return a + b;
}
//Somando valores de 0 a 10 aleatoriamente
int somarAleatoriamente(){
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
// => Indica retorno