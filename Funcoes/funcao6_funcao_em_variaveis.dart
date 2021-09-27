int somaFn(int a, int b){
  return a + b;
}
main(){
  int a = 2;
  //tipo nome valor
  int Function(int, int) soma = somaFn;
  print(soma(1,2));

  int Function(int, int) soma1 = (int x, int y){
    return x + y;
  };
  print(soma1(20, 10));
}
//Função anônima --> função que não tem nome --> Por isso ela é armazenada em variáveis
//Mesmo a função sendo anonima ela vai poder ter os parametros nomeaveis, opicionais e origatórios
