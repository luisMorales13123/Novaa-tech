/**
 * 1.25.	En un vector de x posiciones (x lo define el usuario), solicite al usuario con un ciclo para el
 * llenado de este, 
 * luego ordene el vector en orden ascendente o descendente según lo decida el usuario y luego lo imprima.
 */
import 'dart:io';

void main() {
  // Solicitar al usuario el tamaño del vector
  stdout.write('Ingrese la cantidad de elementos para el vector: ');
  int tamano = int.parse(stdin.readLineSync()!);

  // Crear el vector con el tamaño especificado por el usuario
  List<int> vector = List<int>.filled(tamano, 0);

  // Llenar el vector con valores ingresados por el usuario
  llenarVector(vector);

  // Solicitar al usuario la ordenación deseada (ascendente o descendente)
  print('¿Desea ordenar el vector en orden ascendente (A) o descendente (D)?');
  String opcion = stdin.readLineSync()!.toUpperCase();

  // Ordenar el vector según la opción seleccionada
  if (opcion == 'A') {
    vector.sort(); // Orden ascendente por defecto
  } else if (opcion == 'D') {
    vector.sort((a, b) => b.compareTo(a)); // Orden descendente
  } else {
    print('Opción no válida. Debe elegir "A" para ascendente o "D" para descendente.');
    return;
  }

  // Imprimir el vector ordenado
  print('Vector ordenado en orden $opcion:');
  print(vector);
}

// Función para llenar el vector con valores ingresados por el usuario
void llenarVector(List<int> vector) {
  for (int i = 0; i < vector.length; i++) {
    stdout.write('Ingrese el valor para la posición $i: ');
    vector[i] = int.parse(stdin.readLineSync()!);
  }
}
