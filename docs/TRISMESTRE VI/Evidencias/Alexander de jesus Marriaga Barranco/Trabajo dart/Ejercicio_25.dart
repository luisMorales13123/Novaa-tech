/* 1.25 En un vector de x posiciones (x lo define el usuario), solicite al usuario
 con un ciclo para el llenado de este, luego ordene el vector en orden ascendente 
 o descendente según lo decida el usuario y luego lo imprima.*/

// Codigo 1.25 //

import 'dart:io';

void main() {
  stdout.write("Ingrese la cantidad de posiciones para el vector: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> vector = [];

  for (int i = 0; i < cantidad; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    int valor = int.parse(stdin.readLineSync()!);
    vector.add(valor);
  }
  
  stdout.write("¿Desea ordenar el vector de forma ascendente o descendente? (asc/desc): ");
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion == "asc") {
    vector.sort();
    print("Vector ordenado de forma ascendente: $vector");
  } else if (opcion == "desc") {
    vector.sort((a, b) => b.compareTo(a));
    print("Vector ordenado de forma descendente: $vector");
  } else {
    print("Opción no válida. Por favor, ingrese 'asc' o 'desc'.");
  }
}
