main(){
//Função arrow
//Nesse caso o return atua de maneira implicita//
  var adicao = (int a, int b)=>a + b;
 var subtracao  = (int c, int d) => c - d;
 var divisao  = (int c, int d) => c/d;
 var multiplicacao  = (int c, int d) => c*d;


 print("O valor da adição é ${adicao(1, 2)}"); 
 print("O valor da subtração é ${subtracao(5,1)}");
 print("O valor da divisao é ${divisao(20,2)}");
 print("O valor da multiplicação é ${multiplicacao(2,2)}");

}