/*1.4.	Solicite dos números y los reste, como resultado 
debe mostrar en pantalla (La diferencia del número A con el número B es: resultado).*/

// Codigo 1.4 //

import 'dart:io';

void main() {

  print('Ingrese el primer numero:');
  String inputA = stdin.readLineSync()!;
  double numeroA = double.parse(inputA);


  print('Ingrese el segundo numero:');
  String inputB = stdin.readLineSync()!;
  double numeroB = double.parse(inputB);


  double diferencia = numeroA - numeroB;
  print('La diferencia del numero $numeroA con el numero $numeroB es: $diferencia');
}