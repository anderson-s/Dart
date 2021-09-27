main(){
  var notas = [8.6, 9.0, 3.0, 5.5];
  // var notasBoas = [];

  // for (var nota in notas) {
  //   if(nota >= 7){
  //     notasBoas.add(nota);
  //   }
  // }
  // print(notas);
  // print(notasBoas);
  bool Function(double) notasBoasFn = (double nota_alta) => nota_alta >= 7;
  bool Function(double) notasBaixasFn = (double nota_baixa) => nota_baixa >= 7;
  var notasBoas = notas.where(notasBoasFn);
  var notasBaixas = notas.where(notasBaixasFn);
  print("As notas boas são: ${notasBoas}");
  print("As notas altas são: ${notasBoas}");
}