// Escolha um dos trabalhos a seguir:
// 1. Implemente o algoritmo do CBC com IV que seja capaz de criptografar e descriptografar um texto qualquer digitado pelo usuário.

import 'dart:io';

import 'controller.dart';

main() {
  print("*************************************************************");
  print("Segurança de Redes: Atividade CBC");
  print("*************************************************************");
  print("Selecione o que você deseja:");
  print("\t1 - Criptografar");
  print("\t2 - Descriptografar");
  int opcao = int.tryParse(stdin.readLineSync().toString()) ?? 0;

  switch (opcao) {
    case 1:
      criptografando();
      break;
    case 2:
      descriptografando();
      break;
    default:
      print("Opção inválida!");
      break;
  }
}
