import 'dart:io';

void main() {
  // Paso 1: Solicitar al usuario el tamaño del vector (x posiciones)
  stdout.write('Ingrese el tamaño del vector: ');
  int x = int.parse(stdin.readLineSync()!);

  // Paso 2: Solicitar al usuario que llene el vector
  List<int> vector = [];
  for (int i = 0; i < x; i++) {
    stdout.write('Ingrese el elemento ${i + 1}: ');
    int elemento = int.parse(stdin.readLineSync()!);
    vector.add(elemento);
  }

  // Paso 3: Solicitar al usuario la dirección del ordenamiento
  stdout.write('¿En qué orden desea ordenar el vector? (ascendente/descendente): ');
  String orden = stdin.readLineSync()!.toLowerCase();

  // Paso 4: Ordenar el vector según la opción elegida
  if (orden == 'ascendente') {
    vector.sort();
  } else if (orden == 'descendente') {
    vector.sort((a, b) => b.compareTo(a));
  } else {
    stdout.writeln('Opción de ordenamiento no válida. Saliendo del programa.');
    return;
  }

  // Paso 5: Imprimir el vector ordenado
  stdout.writeln('Vector ordenado en orden $orden: $vector');
}
