
import 'dart:math';

main(){
  var nota = Random().nextInt(11);//Vai nota vai ser obtida aleatoriamente de 0 a 10
  print("A nota do aluno foi: $nota.");
  if(nota >= 7){
    print("Aprovado");
  }
  else if(nota >= 5){
    print("Recuperação");
  }
  else{
    print("Reprovado");
  }
}