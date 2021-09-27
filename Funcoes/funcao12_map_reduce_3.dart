map(){
  var alunos = {
    {'nome': 'Jefferson', 'nota':'10'},
    {'nome': 'Andeson', 'nota':'9'},
    {'nome': 'Silva', 'nota':'8'},
    {'nome': 'Samuel', 'nota':'7'},
    {'nome': 'Ana', 'nota':'5'},
    {'nome': 'Maria', 'nota':'4'},
    {'nome': 'Braga', 'nota':'3'},
  };
  var total = alunos.map((aluno) => aluno['nota'])
  .map((nota) => (nota as double).roundToDouble())
  .reduce((t, a) => t + a) ;

  print("O valor da média é: ${total/alunos.length}.");
}