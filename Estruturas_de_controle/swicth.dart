import 'dart:math';

main(){
  var nota = Random().nextInt(11);
  print("A nota aleatória foi: $nota");

  switch(nota){
    case 1:
    case 2:
    case 3:
    case 4:
      print("Reprovado");
      break;
    case 5:
    case 6:
      print("Recuperação");
      break;
    case 7:
    case 8:
    case 9:
    case 10:
      print("Aprovado");
      break;
    default:
      print("Nota invalida!");
      break;

  }
}