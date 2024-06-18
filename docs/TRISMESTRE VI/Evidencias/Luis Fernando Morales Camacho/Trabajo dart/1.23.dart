import 'dart:io';

void main() {
  List<String> campos = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];
  List<List<String>> matriz = List.generate(4, (_) => List.filled(5, ''));

  // Llenar vector de dimensión 5
  for (int i = 0; i < campos.length; i++) {
    stdout.write('Ingrese ${campos[i]}: ');
    matriz[0][i] = stdin.readLineSync()!;
  }

  // Llenar matriz de 4 por 5 con los datos de los compañeros
  for (int i = 1; i < matriz.length; i++) {
    print('\nDatos del compañero ${i + 1}:');
    for (int j = 0; j < campos.length; j++) {
      stdout.write('Ingrese ${campos[j]}: ');
      matriz[i][j] = stdin.readLineSync()!;
    }
  }

  // Mostrar la matriz en pantalla de forma organizada
  print('\nMatriz de datos:');
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      stdout.write('${matriz[i][j]}\t');
    }
    print('');
  }
}
