// Implemente dois programas na linguagem de sua escolha para realizar os processos de criptografia e decriptografia utilizando cifras poli alfabéticas,
// dado os seguintes requisitos:

// - Deverão ser utilizadas 3 cifras mono alfabéticas à sua escolha juntamente com uma sequencia de repetição também escolhida por você.
// - Ambos os programas deverão possuir as mesmas informações das cifras criadas anteriormente.
// - O programa de criptografia deverá receber um texto qualquer digitado pelo usuário, realizar a criptografia e mostrar o texto encriptado na tela.
// - O programa de decriptografia deverá receber um texto encriptado digitado pelo usuário, realizar a decriptografia e mostrar o texto plano na tela.

import 'dart:io';

const alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
const c1 = "FOGZCJPUXTIWVNHSBRDMKAELYQfogzcjpuxtiwvnhsbrdmkaelyq";
const c2 = "VDUXWJRLANGTKPFCHOIEYBMQSZvduxwjrlangtkpfchoieybmqsz";
const c3 = "RKYNPUDAMBFJLXGEHSTVZWQCOIrkynpudambfjlxgehstvzwqcoi";

List<String> sequencia = [c3, c1, c2];
void main() {
  print("*************************************************************");
  print("Segurança de Redes: Atividade de Cifra Polialfabética");
  print("*************************************************************");
  print("\nDigite o que deseja:");
  print("\t 1- Criptografar texto");
  print("\t 2- Descriptografar texto");
  int opcao = int.tryParse(stdin.readLineSync()!) ?? 0;
  switch (opcao) {
    case 1:
      criptografando();
      break;
    case 2:
      descriptografando();
      break;
    default:
      print("Opção inválida, saindo...");
      break;
  }
}

void criptografando() {
  print("Digite o texto: ");
  String texto = stdin.readLineSync()!;
  String resultado = "";
  for (int i = 0; i < texto.length; i++) {
    int mensagemIndex = alfabeto.indexOf(texto[i]);

    if (mensagemIndex != -1) {
      resultado += sequencia[i % 3][alfabeto.indexOf(texto[i])];
    } else {
      resultado += texto[i];
    }
  }

  print("Resultado: " + resultado);
}

void descriptografando() {
  print("Digite o texto: ");
  String texto = stdin.readLineSync()!;
  String resultado = "";
  for (int i = 0; i < texto.length; i++) {
    int mensagemIndex = sequencia[i % 3].indexOf(texto[i]);

    if (mensagemIndex != -1) {
      resultado += alfabeto[mensagemIndex];
    } else {
      resultado += texto[i];
    }
  }
  print("Resultado: " + resultado);
}
