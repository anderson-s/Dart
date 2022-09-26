import 'dart:io';
import 'dart:math';

void main() {
  print("Digite o valor de a");
  double a = double.parse(stdin.readLineSync()!);
  print("Digite o valor de b");
  double b = double.parse(stdin.readLineSync()!);
  print("Digite o valor de c");
  double c = double.parse(stdin.readLineSync()!);

  double bascara = (b * b) - (4 * a * c);
  double raizDelta = sqrt(bascara);

  double primeiroX = (-b + raizDelta) / (2 * a);
  double segundoX = (-b - raizDelta) / (2 * a);
  if (primeiroX.isNaN || segundoX.isNaN || primeiroX.isInfinite || segundoX.isInfinite) {
    print("Impossivel calcular");
  } else {
    print("R1 ${primeiroX.toStringAsFixed(5)}");
    print("R2 ${segundoX.toStringAsFixed(5)}");
  }
}
