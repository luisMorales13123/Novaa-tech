/*1.5.Solicite dos números y los multiplique, como resultado debe 
mostrar en pantalla (El producto del número A con el número B es: resultado).*/

// Codigo 1.5 //

import 'dart:io';

void main() {
  
  print('Ingrese el primer numero:');
  String inputA = stdin.readLineSync()!;
  double numeroA = double.parse(inputA);

 
  print('Ingrese el segundo numero:');
  String inputB = stdin.readLineSync()!;
  double numeroB = double.parse(inputB);

  double producto = numeroA * numeroB;
  print('El producto del numero $numeroA con el numero $numeroB es: $producto');
}

