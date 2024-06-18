/* 1.19 Solicite una acción y que muestre 6 números aleatorios
 del 1 al 45 sin repetirse y organizados de menor a mayor (baloto).*/

// Codigo 1.19 //

import 'dart:io';


void main() {
  print("¡Bienvenido al generador de números para el Baloto!");

  stdout.write("Ingrese 'generar' para obtener los números: ");
  String accion = stdin.readLineSync()!.toLowerCase();

  if (accion == "generar") {
    List<int> numeros = List.generate(45, (index) => index + 1);
    numeros.shuffle();
    List<int> numerosBaloto = numeros.sublist(0, 6);
    numerosBaloto.sort();

    print("\nLos números generados para el Baloto son:");
    print(numerosBaloto);
  } else {
    print("¡Acción no reconocida! Por favor, ingrese 'generar'.");
  }
}
