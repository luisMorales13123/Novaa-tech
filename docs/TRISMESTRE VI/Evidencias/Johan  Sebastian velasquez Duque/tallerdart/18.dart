/**
 * 1.18.	Solicite tres números y que según la decisión del usuario los organice de forma ascendente o descendente.
 */
import 'dart:io';
void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Lista 
  List<int> numeros = [0, 0, 0];
  //preguntar por los números de la lista
  stdout.write('Digite el primer número de la lista: ');
  numeros[0] = int.parse(stdin.readLineSync()!);
  stdout.write('Digite el segundo número de la lista: ');
  numeros[1] = int.parse(stdin.readLineSync()!);
  stdout.write('Digite el tercer número de la lista: ');
  numeros[2] = int.parse(stdin.readLineSync()!);

  stdout.write("Quieres ver la lista de números de forma ascendente o descendente? \n"
      + "1-ascendente\n"
      + "2-descendente\n");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    numeros.sort();
    print("La lista de números de forma ascendente es: $numeros");
  } else if (opcion == 2) {
    //se comparán para ver cual es menor y listarlo
    numeros.sort((a, b) => b.compareTo(a));
    print("La lista de números de forma descendente es: $numeros");
  } else {
    print("La opción ingresada no es válida");
  }

  // fin del Algoritmo
  print("\n" + ("-" * 50) + "\n");
  print("Johan velasquez, ficha: 2693505");
}
