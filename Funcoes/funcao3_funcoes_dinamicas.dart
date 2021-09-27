main(){
  juntar(1, 2);
  juntar("Bom", " Dia!");
  juntar("O valor de PI é : ", 3.14889);
  String resultado = juntar("Andeson ", "Silva");
  print(resultado.toUpperCase());
}
dynamic juntar(a, b){
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}