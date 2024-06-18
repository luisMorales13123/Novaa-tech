/* 1.20. Solicite un número, lo descomponga 
y muestre en pantalla cuántos dígitos tiene.*/

// Codigo 1.20 //

import 'dart:io';

void main() {
  stdout.write("Ingrese un número: ");
  int numero = int.parse(stdin.readLineSync()!);

  int contadorDigitos = 0;
  int numeroTemporal = numero.abs(); 

  if (numeroTemporal == 0) {
    contadorDigitos = 1;
  } else {

    while (numeroTemporal > 0) {
      contadorDigitos++;
      numeroTemporal ~/= 10; 
    }
  }

  print("El número $numero tiene $contadorDigitos dígitos.");
}
