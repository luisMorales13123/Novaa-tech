/* 1.18.	Solicite tres números y que según la decisión del usuario
 los organice de forma ascendente o descendente.*/

// Codigo 1.18 //

import 'dart:io';

void main() {
  stdout.write("Ingrese el primer número: ");
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  double numero2 = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el tercer número: ");
  double numero3 = double.parse(stdin.readLineSync()!);

  stdout.write("¿Cómo desea ordenar los números? (ascendente/descendente): ");
  String opcion = stdin.readLineSync()!.toLowerCase();

  List<double> numeros = [numero1, numero2, numero3];

  if (opcion == "ascendente") {
    numeros.sort();
    print("Números ordenados de forma ascendente: ${numeros[0]}, ${numeros[1]}, ${numeros[2]}");
  } else if (opcion == "descendente") {
    numeros.sort((a, b) => b.compareTo(a));
    print("Números ordenados de forma descendente: ${numeros[0]}, ${numeros[1]}, ${numeros[2]}");
  } else {
    print("Opción inválida. Por favor, ingrese 'ascendente' o 'descendente'.");
  }
}
