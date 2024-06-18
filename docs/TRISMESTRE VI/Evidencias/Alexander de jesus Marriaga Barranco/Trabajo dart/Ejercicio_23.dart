/* 1.23.	Llene un vector de dimensión 5 con las palabras nombre, apellido, edad, estado y teléfono; 
y llene una matriz de 4 por 5 con los datos de sus compañeros.Luego de llenar la matriz, 
la muestre en pantalla de forma organizada.*/

// Codigo 1.23 //

import 'dart:io';

void main() {

  List<String> palabrasClave = ["nombre", "apellido", "edad", "estado", "teléfono"];


  List<List<dynamic>> matriz = List.generate(4, (index) => List.filled(5, ""));


  for (int i = 0; i < 4; i++) {
    print("\nIngrese los datos del compañero ${i + 1}:");
    for (int j = 0; j < 5; j++) {
      stdout.write("${palabrasClave[j]}: ");
      matriz[i][j] = stdin.readLineSync();
    }
  }

  print("\nMatriz de datos de los compañeros:");
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }
}
