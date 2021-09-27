import 'carro.dart';

main(){
  var variavel = new Carro(100);

  while(!variavel.estaNoLimite()){
    print("A velocidade atual é: ${variavel.acelerar()} Km/h");
  }
  print("O carro chegou no máximo com velocidade ${variavel.velocidade_maxima} Km/h");

  
  while(!variavel.estaParado()){
    print("A velocidade atual do carro é ${variavel.freiar()} Km/h");
  }
  print("O carro parou com a velocidade ${variavel.velocidade_atual} Km/h");
}