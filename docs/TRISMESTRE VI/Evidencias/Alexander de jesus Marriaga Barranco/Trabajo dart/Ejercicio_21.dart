/* 1.21.	Solicite 2 números por teclado, luego indique al usuario si desea la serie
 par o impar, después muestre en pantalla la serie par o impar según la elección
desde el número menor que se ingresó al inicio hasta el número mayor.*/

// Codigo 1.21 //

import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int numero2 = int.parse(stdin.readLineSync()!);

  stdout.write("¿Desea ver la serie de números pares o impares? (par/impar): ");
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion == "par") {
    print("\nSerie de números pares entre $numero1 y $numero2:");
    for (int i = numero1; i <= numero2; i++) {
      if (i % 2 == 0) {
        print(i);
      }
    }
  } else if (opcion == "impar") {
    print("\nSerie de números impares entre $numero1 y $numero2:");
    for (int i = numero1; i <= numero2; i++) {
      if (i % 2 != 0) {
        print(i);
      }
    }
  } else {
    print("\nOpción no válida. Por favor, ingrese 'par' o 'impar'.");
  }
}
