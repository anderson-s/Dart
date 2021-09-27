//Faz com que a funcao cubra todos os tipos de valores 
Object segundoElement01(List lista){
  return lista.length >= 2 ? lista[1] : null;
}
segundoElement02<E>(List<E> lista){
  return lista.length >= 2? lista[1] : null;
}
main(){
  var lista = [1,2,3,4,5,6,7,8,9,10];
  print(segundoElement01(lista));

  int segundoElemento = segundoElement02<int>(lista);
  print(segundoElemento);

  segundoElemento = segundoElement02(lista);
  print(segundoElemento);
}