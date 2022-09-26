import 'dart:io';

class Conta {
  double _saldo = 0;
  double _sacar = 0;
  double _depositar = 0;

  double get sacar {
    return this._sacar;
  }

  double get saldo {
    return this._saldo;
  }

  double get depositar {
    return this._depositar;
  }

  set saque(double saque) {
    this._sacar = saque;
    this._saldo = saldo - _sacar;
  }

  set saldo(double saldo) {
    this._saldo = saldo;
  }

  set deposito(double depositar) {
    this._depositar = depositar;
    this._saldo = _depositar + _saldo;
  }
}

void main() {
  //Getter --> pegar
  //Setter --> configurar
  Conta operacoes = Conta();

  int sair = 0;
  while (sair == 0) {
    print("Escolha uma opção:");
    print("   1 - Ver saldo");
    print("   2 - Sacar");
    print("   3 - Depositar");
    print("   4 - Sair \n");
    int opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        print("O seu saldo é: ${operacoes.saldo}");
        break;
      case 2:
        print("Insira o valor para ser sacado: ");
        operacoes.saque = double.parse(stdin.readLineSync()!);
        print("Saque concluído com sucesso");
        break;
      case 3:
        print("Insira o valor para ser depositado: ");
        operacoes.deposito = double.parse(stdin.readLineSync()!);
        print("Depositando!!!");
        break;
      case 4:
        print("Operação realizada com sucesso!");
        sair = 1;
        break;
      default:
        print("Opção invalida!!");
        break;
    }
  }
}
