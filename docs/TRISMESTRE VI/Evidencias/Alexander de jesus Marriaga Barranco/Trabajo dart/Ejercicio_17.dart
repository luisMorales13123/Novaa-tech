/* 1.17 Encuentre el factorial de un número del 0 al 12, si lo supera, el factorial es infinito.*/

// Codigo 1.17 //

import 'dart:io';

void main() {
  stdout.write("Ingrese un número del 0 al 12 para encontrar su factorial: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 0 && numero <= 12) {
    int factorial = calcularFactorial(numero);
    print("El factorial de $numero es: $factorial");
  } else {
    print("El factorial de $numero es infinito (supera el límite de representación).");
  }
}

int calcularFactorial(int n) {
  int factorial = 1;
  for (int i = 2; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}
