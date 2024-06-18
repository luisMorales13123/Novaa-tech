/* 1.14	Muestre en pantalla la tabla de multiplicar
 del número indicado por el usuario (del 1 al 10).*/

// Codigo 1.14//

import 'dart:io';

void main() {
  stdout.write("Ingrese un numero para ver su tabla de multiplicar: ");
  int numero = int.parse(stdin.readLineSync()!);

  print("\nTabla de multiplicar del $numero:\n");

  for (int i = 1; i <= 10; i++) {
    int producto = numero * i;
    print("$numero x $i = $producto");
  }
}
