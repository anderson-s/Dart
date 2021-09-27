//O nome da classe deve começar com letra maiúscula
//A classe é um molde, uma planta para construir um objeto ou pessoa
class Data{
  //Atributos--> Informações e caracteristicas que o objeto vai possuir
   var dia;
   var mes;
   var ano;
}
main(){
  Data dataAniversario = new Data();//Objeto --> Vai poder usar todos os atributos existentes na classe data
                        //Instanciando um objeto
  dataAniversario.dia = 27;
  dataAniversario.mes = 06;
  dataAniversario.ano = 2002;

  Data dataCompra = Data();
  dataCompra.dia = 10; //--> Adicionando o valor 10 ao atributo dia da classe data
  dataCompra.mes = 10; //--> Adicionando o valor 10 ao atributo mes da classe data
  dataCompra.ano = 2021;//--> Adicionando o valor 2021 ao atributo ano da classe data

  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  print("${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");

}