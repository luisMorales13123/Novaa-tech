/*1.6.	Solicite dos números y los divida, como resultado debe mostrar en pantalla
(La división del número A entre el número B es: resultado). Si el denominador es 
cero,deben salir en pantalla: Imposible la división por 0.*/

// Codigo 1.6 //

import 'dart:io';

void main() {

  print('Ingrese el primer numero:');
  String inputA = stdin.readLineSync()!;
  double numeroA = double.parse(inputA);

  print('Ingrese el segundo numero:');
  String inputB = stdin.readLineSync()!;
  double numeroB = double.parse(inputB);

  if (numeroB == 0) {
    print('Imposible la división por 0.');
  } else {
 
    double division = numeroA / numeroB;
    print('La división del numero $numeroA entre el numero $numeroB es: $division');
  }
}