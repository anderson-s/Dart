main(){
  int a = 10;//Inteiro
  double b = 3.14;//Numeros decimais
  var numero = 2;//Adiciona o tipo da variável ao colocar o valor
  var texto = "Silva";//String
  print((a + b + numero).toString() + texto);

  print(a.runtimeType);
  print(b.runtimeType);
  print(texto.runtimeType);

  print(b is double);
  print(a is double);
}