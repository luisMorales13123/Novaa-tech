/**
 * 1.14.	Muestre en pantalla la tabla de multiplicar del número indicado por el usuario (del 1 al 10).
 */
import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  int numero;
  int i;

  stdout.write('Digita el número del que quieres la tabla de multiplicar:');
  numero = int.parse(stdin.readLineSync()!);
  for (i = 1; i <= 10; i++) {
    //concatenar la respuesta
    print('$numero x $i = ${numero * i}' );
  }
  print("Johan velasquez, ficha: 2693505");
}
