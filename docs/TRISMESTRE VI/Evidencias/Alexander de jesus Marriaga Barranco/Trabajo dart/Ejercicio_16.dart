/* 1.16	Solicite la cantidad de números que se desea ver de la serie de Fibonacci.*/

// Codigo 1.16 //

import 'dart:io';

void main() {
  stdout.write("Ingrese la cantidad de números de la serie de Fibonacci que desea ver: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  print("\nLos primeros $cantidad números de la serie de Fibonacci son:");

  int a = 0;
  int b = 1;
  
  for (int i = 0; i < cantidad; i++) {
    stdout.write("$a ");
    int siguiente = a + b;
    a = b;
    b = siguiente;
  }
}
