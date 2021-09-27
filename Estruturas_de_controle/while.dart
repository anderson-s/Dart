import 'dart:io';
main(){
  var digitado;
  
  while(digitado != "sair"){
    stdout.write("Digite um texto digite sair: ");
    digitado = stdin.readLineSync();
  }
  print("Fim do while!");

  int a = 0;
  do{
    print(a);
    a++;
  }while(a < 10);
  print("Fim do while!");
}