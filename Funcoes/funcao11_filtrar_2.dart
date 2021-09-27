List<double> filtrar(List<double> lista, bool Function(double) fn){
  List<double> listaFiltrada = [];
  for (double elemento in lista) {
    if(fn(elemento)){
      listaFiltrada.add(elemento);
    }
    
  }
  return listaFiltrada;
}
main(){
  var notas = [8.6, 9.0, 3.0, 5.5];
  var boasNotasFn = (double nota) => nota >= 7.5;

  var somenteNotasBoas = filtrar(notas, boasNotasFn);
  print(somenteNotasBoas);
  var nomes = ["Ana", "Maria", "Braga"];
} 