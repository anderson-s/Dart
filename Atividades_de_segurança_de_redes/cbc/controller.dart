import 'dart:io';

import 'tabelas.dart';

String iv = "1010111110110101"; //Defindo iv

const cod = [2, 3, 1, 4];

//Completa a sequência de bits com 0 à esquerda
funcaoCompletarBinario(int tamanho, String valor) {
  for (int i = valor.length; i < tamanho; i++) {
    valor = "0" + valor.substring(0, i);
  }
  return valor;
}

//Fazendo a troca dos valores de acordo com as tabelas definidas
funcaoTrocar(String valor, int posicaoTabela) {
  String trocado = "";
  for (int i = 0; i < 16; i++) {
    bool base = valor == tabelas[0][i];
    if (base) trocado = tabelas[posicaoTabela][i];
  }
  return trocado;
}

//Função para deixar a qtde de bits divisiveis por 8
funcaoQtdeCompletarBits(int valor) {
  return ((valor + 7) ~/ 8) * 8;
}

//Desfazendo a troca
funcaoDestrocando(String valor, int posicaoTabela) {
  String destrocando = "";

  for (int i = 0; i < 16; i++) {
    bool base = valor == tabelas[posicaoTabela][i];
    if (base) {
      destrocando = tabelas[0][i];
    }
  }
  return destrocando;
}

//Desembaralhando os bits
funcaoDesembaralhar(List<String> valores) {
  List<String> desembaralhando = [];
  desembaralhando.add(valores[2]);
  desembaralhando.add(valores[0]);
  desembaralhando.add(valores[1]);
  desembaralhando.add(valores[3]);
  return desembaralhando;
}

//Embaralhando os bits
funcaoEmbaralhar(List<String> valores) {
  List<String> trocar = [];
  for (int i = 0; i < cod.length; i++) {
    trocar.add(valores[cod[i] - 1]);
  }
  return trocar;
}

criptografando() {
  print(
      "Observações:\n\t1-O preenchimento da mensagem é obrigatória;\n\t2-A mensagem deve possuir pelo menos 2 caracteres;");
  print("Digite a mensagem:");
  String mensagem = stdin.readLineSync().toString();
  int operation = 0;
  int auxiliarConversao = 0;
  String resultado = "";
  if (mensagem.length < 2) {
    print("Mensagem inválida!");
  } else if (mensagem.isNotEmpty) {
    if (mensagem.length % 2 == 1) mensagem += " ";

    for (int i = 0, j = 1; j < mensagem.length; i += 2, j += 2) {
      List<String> trocas = [];
      String parte1 =
          funcaoCompletarBinario(8, mensagem.codeUnitAt(i).toRadixString(2));
      String parte2 =
          funcaoCompletarBinario(8, mensagem.codeUnitAt(j).toRadixString(2));

      for (int k = 0, l = 4, m = 0; k < 16; k += 4, l += 4, m++) {
        //CONVERSÕES E OPERAÇÕES
        operation = int.parse(iv.substring(k, l), radix: 2);
        auxiliarConversao = int.parse(
            k < 8 ? parte1.substring(k, l) : parte2.substring(k - 8, l - 8),
            radix: 2);
        String auxOperationXor = funcaoCompletarBinario(
            4, (operation ^ auxiliarConversao).toRadixString(2));

        //TROCA1
        trocas.add(funcaoTrocar(auxOperationXor, m + 1));
      }
      //EMBARALHAMENTO 1
      List<String> embaralhar = funcaoEmbaralhar(trocas);
      //TROCA2
      trocas.clear();
      for (int k = 0; k < 4; k++) {
        trocas.add(funcaoTrocar(embaralhar[k], k + 1));
      }
      embaralhar = funcaoEmbaralhar(trocas);
      iv = "";
      for (int k = 0; k < 4; k++) {
        iv += embaralhar[k];
      }
      resultado += iv;
    }
    print("\nA mensagem criptografada é ${resultado}");
  } else {
    print("A mensagem é obrigatória!");
  }
}

descriptografando() {
  print(
      "Observações:\n\t1-É obrigatório o preenchimento da mensagem criptografada;\n\t2-A mensagem criptograda deve possuir pelo menos 2 bytes;\n\t3-A mensagem deve possuir apenas bits (0 e/ou 1);");
  print("Digite a mensagem criptografada:");
  String mensagem = stdin.readLineSync().toString();
  if (mensagem.isEmpty) {
    print("Mensagem inválida!");
  } else if (mensagem.length < 16) {
    print("Mensagem inválida!");
  } else if (mensagem.contains(RegExp(r'[A-Z]')) ||
      mensagem.contains(RegExp(r'[a-z]')) ||
      mensagem.contains(RegExp(r'[2-9]'))) {
    print("Mensagem inválida");
  } else {
    mensagem = funcaoCompletarBinario(
        funcaoQtdeCompletarBits(mensagem.length), mensagem);
    String mensagemDescriptografada = "";
    int operation = 0;
    int auxiliarConversao = 0;
    for (int i = 0, j = 16, k = 0;
        k < (mensagem.length / 16);
        k++, i += 16, j += 16) {
      //variáveis auxiliares
      String resultadoDaOperacao = "";
      String bloco = (mensagem.substring(i, j));
      List<String> dividindoBloco = [];
      List<String> auxDesembaralhar = [];
      List<String> auxDestrocar = [];
      for (int l = 0, m = 4, n = 0; l < 4; l++, m += 4, n += 4) {
        dividindoBloco.add(bloco.substring(n, m));
      }
      //Desembaralhando
      auxDesembaralhar = funcaoDesembaralhar(dividindoBloco);

      //Destrocando
      for (int l = 0; l < 4; l++) {
        auxDestrocar.add(funcaoDestrocando(auxDesembaralhar[l], l + 1));
      }

      //Desembaralhando
      auxDesembaralhar = funcaoDesembaralhar(auxDestrocar);

      //Destrocando
      auxDestrocar.clear();
      for (int l = 0; l < 4; l++) {
        auxDestrocar.add(funcaoDestrocando(auxDesembaralhar[l], l + 1));
      }
      //Fazendo operação
      for (int l = 0, m = 0, n = 4; l < 4; l++, m += 4, n += 4) {
        auxiliarConversao = int.parse(auxDestrocar[l], radix: 2);
        operation = int.parse(iv.substring(m, n), radix: 2);

        resultadoDaOperacao += funcaoCompletarBinario(
            4, (auxiliarConversao ^ operation).toRadixString(2));
      }

      //Transformando para caractere
      for (int l = 0, m = 0, n = 8;
          l < resultadoDaOperacao.length / 8;
          l++, m += 8, n += 8) {
        mensagemDescriptografada += (String.fromCharCode(
          int.parse(resultadoDaOperacao.substring(m, n), radix: 2),
        ));
      }
      iv = bloco;
    }
    print("\nA mensagem descriptografada é: ${mensagemDescriptografada}");
  }
}
