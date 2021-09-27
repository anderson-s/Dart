
class Data{
  //Atributos
   var dia;
   var mes;
   var ano;

   //Construtor
   //Os construtores são funções utilizadas para construir um objeto, passando os valores como parâmetros
   Data(int dia, int mes, int ano){
     //O this é uma palavra reservada utilizada para especificar um atributo do objeto e não um parâmetro
    this.dia = dia; 
    this.mes = mes;
    this.ano = ano; 
  }
  //O construtor tbm pode ser declarada dessa forma:
  //Data(this.dia, this.mes, this.ano);

  obterDataFormatada(){
    return("$dia/$mes/$ano");
  }

  //Método para formatar o objeto em String
  String toString(){
    return obterDataFormatada();
  }

}
main(){
  var dataAniversario = Data(27, 06, 2002);//Instanciando o objeto e passando os valores dos atributos atraves por parametros
  
  var dataCompra = Data(20, 12, 2021);

  var data1 = dataAniversario.obterDataFormatada();
  var data2 = dataCompra.obterDataFormatada();
  print("$data1");
  print("$data2");

  print(dataCompra);

}