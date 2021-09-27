
class Data{
  //Atributos
   var dia;
   var mes;
   var ano;

   //Construtor
  //  Data(int dia, int mes, int ano){
  //   this.dia = dia; 
  //   this.mes = mes;
  //   this.ano = ano;
  // }Ou tbm pode ser realizado:
    Data(this.dia, this.mes, this.ano);

    Data.nome({this.dia = 30, this.mes = 12, this.ano = 2021});//--> Construtor nomeado
  //Métodos são funções dentro da classe --> eles podem aceitar os atributos da classe como atributos, além de poder utilizar parametros proprios
    obterDataFormatada(){
    return("$dia/$mes/$ano");
  }

  //Método para formatar o objeto em String
  String toString(){
    return obterDataFormatada();
  }

}
main(){
  var dataAniversario = new Data(27, 06, 2002);//Objeto --> Vai poder usar todos os atributos existentes na classe data
  
  var dataCompra = Data(20, 12, 2021);

  var data1 = dataAniversario.obterDataFormatada();
  var data2 = dataCompra.obterDataFormatada();
  print("$data1");
  print("$data2");

  print(dataCompra);
  print(Data.nome(ano: 2022));

}