main(){
  var notas = {7.7, 5.5, 9.0, 10.0};
  var total = notas.reduce(somar);
  print(total);

  var nomes = ['Ana', 'Maria', 'Braga'];
  print(nomes.reduce(juntar));

}
double somar(double acumulador, double elemento){
  print('$acumulador $elemento');
  return acumulador + elemento;
}
String juntar(String acumulador, String elemento){
  print("$acumulador, $elemento");
  return "$acumulador, $elemento";
}