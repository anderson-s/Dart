main(){
  var alunos = {
    {'nome': 'Jefferson', 'nota':'10'},
    {'nome': 'Andeson', 'nota':'9'},
    {'nome': 'Silva', 'nota':'8'},
    {'nome': 'Samuel', 'nota':'7'},
  };
  String Function(Map) pegarApenasNome = (aluno) => aluno['nome'];
  int Function(String) qtdeDeLetras = (texto) => texto.length;
  int Function(int) dobro = (numero) => numero*2;
  
  var resultado = alunos
  .map(pegarApenasNome)
  .map(qtdeDeLetras)
  .map(dobro);

  print(resultado);
}