/**
 * 1.17.	Encuentre el factorial de un número del 0 al 12, si lo supera, el factorial es infinito.
 */
import 'dart:io';

void main() {
    // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");
  // Solicitar al usuario un número del 0 al 12
  stdout.write('Digite un número del 0 al 12: ');
  int numero = int.parse(stdin.readLineSync()!);

  // Verificar si el número está en el rango permitido
  if (numero < 0) {
    print('El número debe ser mayor o igual a 0.');
  } else if (numero > 12) {
    print('El factorial es infinito.');
  } else {
    // Calcular el factorial del número
    int factorial = 1;
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }

    // Mostrar el resultado
    print('El factorial de $numero es $factorial.');
      print("\n" + ("-" * 20) + "\n");
   print("Johan velasquez, ficha: 2693505");
  }
}
