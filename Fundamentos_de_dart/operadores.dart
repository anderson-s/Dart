import 'dart:io';
main(){
  //Aritméticos
  int a = 1;
  int b = 2;
  print(a + b);//Adição
  print(a - b);//Subtração
  print(a/b);//Divisão
  print(a % b);//Modulo, resto da divisão
  print(a * b);//Multiplicação
  //Ordem: primeiro ocorre divisão, divisão, adicao e subtracao(o que vier primeiro)

  //Operadores lógicos(booleanos)
  bool c = true;
  bool d = false;
  print(c && d); //Se as duas operações forem verdadeiras ela retorna um valor verdadeiro, se não vai ser false
  //print(c || d); //Retorna valor verdadeiro caso uma das setenças seja verdadeira.
  print(c ^ d);//Ou exclusivo
  print(!c);

  //Operadores de atribuição
  int e = 2;
  e = e + 3;
  e += 3;
  e -= 2;
  e *= 3;
  // e = (e/2);
  e %= 3;
  print(e);

  //Operadores Relacionais --> Sempre retorna valores verdadeiros ou falsos
  print(a > 3);
  print(a >= 3);
  print(a < 3);
  print(a <= 3);
  print(a != 3);
  print(a == 3);
  print(a == '3');
  print(3 & 5);
  //3 = 011; 5 == 101

  //Operadores Unários
  int f = 3;
  int g = 4;
  f++;//Posfix
  --f;//Prefix
  print(f);
  print(f++ == --g);
  print(a == b);
  print(!false);
  print(!true);
  
  print("Está chovendo?  (s/n)");
  final chovendo = stdin.readLineSync();
  bool tipo = chovendo == "s";
  print(tipo);

  
  print("Está frio?  (s/n)");
  final frio = stdin.readLineSync();
  bool clima = frio == "s";
  String resultado = tipo || clima? "Ficar em casa": "Sair!!!";
  print(resultado);

}