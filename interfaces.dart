//São utilizadas quando os métodos são usadas de formas diferentes em outras classes
//Pode-se dizer, a grosso modo, que uma interface é um contrato que quando assumido por uma classe deve ser implementado

abstract class Presidenciavel {
  void participarEleicao();
}

class Cidadao {
  void funcao() {
    print("Possui direitos e deveres");
  }
}

class Andeson extends Cidadao implements Presidenciavel{
  @override
  void participarEleicao() {
    print("Não vou participar");
  }
}

class Obama extends Cidadao implements Presidenciavel{
  @override
  void participarEleicao() {
   print("Vai participar");
  }
}

void main() {
  Andeson andeson = Andeson();
  Obama obama = Obama();
  andeson.funcao();
  obama.funcao();
}
