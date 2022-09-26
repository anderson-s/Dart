/*
  Classe abstrata: Ela não permite instanciar a classe; Com elas o programador pode criar funções sem coropo, fazendo com que as classes filhas sejam obrigadas a sobrescrevê-las;
  Classe concreta: São classes em que se pode instanciar;
 */

abstract class Animal {
  late String cor;
  void correr();//Função sem corpo
}

class Cao extends Animal {
  void latir() {
    print("Latir");
  }
  @override 
  void correr() {
    print("O cachorro está correndo");
  }
}

class Passaro extends Animal {

  void voar() {
    print("Voar");
  }
  @override
  void correr(){
    print("O passarin tá correndo!!!!");
  }
}

void main() {
  Cao cao = Cao();
  Passaro passaro = Passaro();
  cao.correr();
}
