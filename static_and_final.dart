//O static permite acessar atributos sem a necessidade de instanciar a classe pai
//A classe com static consomem mais recursos que o app necessita
class Configuracoes{
  static String id = "HJRHJERJH";
  String notificacaoSom = "Sim";

}
//O final não permite fazer a alteração de uma variavel
class Conta{
  late final String valor;
}
void main(){
  // Configuracoes config = Configuracoes();
  print(Configuracoes.id);
  Conta conta = Conta();
  conta.valor = "Andeson";
  print(conta.valor);
}