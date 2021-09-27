main(){
  salvePessas(nome:'Silva', idade:30);
  salvePessas(idade: 19, nome: 'Andeson');

  imprimirData();
}
//Os paramentros nomeados nas funções são representados com {} na função
//Esses parametros não precisam seguir suas posições, porém sempre vão precisar dos nomes
//Os parametros nomeados tbm podem ter valores padrões caso não sejam repassados nenhum valor para os mesmos
salvePessas({var nome, var idade}){
  print("Olá $nome nem parece que voce tem $idade anos!");
}
imprimirData({int dia = 1, int mes = 1, int ano = 2021}){
  print('$dia/$mes/$ano');
}