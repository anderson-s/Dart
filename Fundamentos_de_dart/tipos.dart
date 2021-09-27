// numeros(int e double)
// String 
// Booleano(bool)
// import 'dart:svg';

main(){
  // Dynamic --> 
  int inteiro = 3;//Essa variavel muda o tipo dela para qualquer valor
  num x = 2;//Permite valores inteiros e reais
  double fracao = 3.14;
  double texto = double.parse("12.000");
  //double fracao = -5.67.abs(); -> deixa positivo
  print(inteiro + fracao + texto + x);

  String bom = "Bom";
  String dia = " dia";
  print(bom + dia);
  print(bom + dia.toUpperCase() + "!!!");

  bool chovendo = true;
  bool esta_frio = false;

  print(chovendo && esta_frio); 

//List
  var aprovados = ['Andeson', 'Silva'];
  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(1));
  print(aprovados[0]);
  print(aprovados.length);
//Map
  var contatos = {
    'Andeson:':'40028922',
    'Silva:':'40028922',
  };
  print(contatos is Map);
  print(contatos);
  print(contatos['Andeson']);
  print(contatos.length);
  print(contatos.values);
  print(contatos.keys);
  print(contatos.entries);

//Set
var times = {'Vasco', 'Flamengo', 'Bota-fogo', 'Flu'};
  print(contatos is Set);
  times.add('Volta-Redonda');
  print(times.length);
  print(times.first);
  print(times.last);
}