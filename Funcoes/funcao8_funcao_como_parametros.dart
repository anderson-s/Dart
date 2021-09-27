import 'dart:math';
void executar1(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10); 
  print("O valor sorteado é: $sorteado");
  sorteado % 2 == 0? fnPar() : fnImpar();
    //Número aletório é par? True? Caso contrario False 
} 
void executar2(int qtde, Function(String) fn, String valor) {
  for(int i = 0; i < qtde; i++){
    fn(valor);
  } 
} 
main(){
  var minhafnPar = () => print("Eita! O valor é par!");
  var minhafnImpar = () => print("O valor é impar");
  executar1(minhafnPar, minhafnImpar);

  print("Teste");
  executar2(10, print, 'Muito legal');
}