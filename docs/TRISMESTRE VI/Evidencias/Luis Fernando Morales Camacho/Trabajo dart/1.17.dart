import 'dart:io';

void main() {
  int numero = 12; // Número del que queremos calcular el factorial

  // Verificamos si el número está dentro del rango permitido
  if (numero >= 0 && numero <= 12) {
    int factorial = calcularFactorial(numero);
    print('El factorial de $numero es: $factorial');
  } else {
    print('El factorial de $numero es infinito');
  }
}

int calcularFactorial(int n) {
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}
