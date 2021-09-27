
class Data{
  //Atributos
   var dia;
   var mes;
   var ano;
  //Métodos são funções dentro da classe --> eles podem aceitar os atributos da classe como atributos, além de poder utilizar parametros proprios
  obterDataFormatada(){
    return("$dia/$mes/$ano");
  }
  //Os métodos são as ações que o obejeto pode fazer
  //Método para formatar o objeto em String
  String toString(){
    return obterDataFormatada();
  }

}
main(){
  var dataAniversario = new Data();//Objeto --> Vai poder usar todos os atributos existentes na classe data
  dataAniversario.dia = 27;
  dataAniversario.mes = 06;
  dataAniversario.ano = 2002;

  var dataCompra = Data();
  dataCompra.dia = 10;
  dataCompra.mes = 10;
  dataCompra.ano = 2021;

  var data1 = dataAniversario.obterDataFormatada();
  var data2 = dataCompra.obterDataFormatada();
  print("$data1");
  print("$data2");

  print(dataCompra);

}