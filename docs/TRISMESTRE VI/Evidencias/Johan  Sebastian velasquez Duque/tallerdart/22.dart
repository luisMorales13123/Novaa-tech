/**
 * 1.22.	Llene un vector de 10 posiciones con un ciclo para,
 *  luego imprima con otro ciclo el vector mostrando el índice, la posición y el valor.
 */
import 'dart:io';

void main() {
  // Crear un vector de 10 posiciones
  List<int> vector = List.filled(10, 0);

  // Llenar el vector con un ciclo for
  for (int i = 0; i < vector.length; i++) {
    vector[i] = i + 1; // Asignar valores al vector (por ejemplo, números del 1 al 10)
  }

  // Imprimir el vector mostrando índice, posición y valor
  print('Vector llenado:');
  for (int i = 0; i < vector.length; i++) {
    print('Índice: $i, Posición: ${i + 1}, Valor: ${vector[i]}');
  }
}
