/**
 * 1.20.	Solicite un número, lo descomponga y muestre en pantalla cuántos dígitos tiene.
 */
import 'dart:io';
import 'dart:math';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Solicitar una acción
  stdout.write('Ingresa tu nombre: ');
  String nombre = stdin.readLineSync()!;
  print("HOLA $nombre");

  Random random = Random();
  //validar que los números no se repitan con el uso de set
  Set<int> numerosSet = {};

  // Generar 6 números aleatorios únicos entre 1 y 45
  while (numerosSet.length < 6) {
    numerosSet.add(random.nextInt(45) + 1);
  }

  // Convertir el set a una lista y ordenarla, se usa ..sort para ordernar 
  //la lista y devolver la misma, si se usase el .sort no retornaría nada
  List<int> numeros = numerosSet.toList()..sort();

  print("Tu lista de números aleatorios es: $numeros");

  // Fin del Algoritmo
  print("\n" + ("-" * 50) );
   print("Johan velasquez, ficha: 2693505");
}
