/* 1.3.	Solicite dos números y los sume, como resultado debe mostrar en pantalla
 (La suma del número A con el número B es: resultado).*/

// Codigo 1.3 //

import 'dart:io';

void main() {

  print("\nSuma de numeros");
  
  stdout.write("Ingrese el primer numero: ");
  double numero1 = double.parse(stdin.readLineSync()!);
  
  stdout.write("Ingrese el segundo numero: ");
  double numero2 = double.parse(stdin.readLineSync()!);
  

  double resultado = numero1 + numero2;
  
 
  print("La suma del numero $numero1 con el número $numero2 es: $resultado");
}