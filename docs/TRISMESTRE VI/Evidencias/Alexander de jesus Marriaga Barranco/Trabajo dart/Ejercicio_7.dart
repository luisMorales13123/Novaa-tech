/*1.7.	Muestre un menú: Amarillo = 1, azul = 2, rojo = 3. 
Luego solicite al usuario digitar dos de estos números para descifrar la combinación.
Ejemplo: 1 y 3, el resultado mostrado en pantalla (su combinación es naranja). 
Recuerde que el usuario puede colocar el mismo número dos veces y números fuera del rango.*/

// Codigo 1.7 //

import 'dart:io';

void main() {
  
  print('Menu:');
  print('1. Amarillo');
  print('2. Azul');
  print('3. Rojo');


  print('Ingrese dos números del menú separados por espacios:');
  String input = stdin.readLineSync()!;
  List<String> numeros = input.split(' ');


  int numero1 = int.tryParse(numeros[0]) ?? 0;
  int numero2 = int.tryParse(numeros[1]) ?? 0;

  String color = '';
  if (numero1 == 1 && numero2 == 1) {
    color = 'amarillo';
  } else if (numero1 == 1 && numero2 == 2 || numero1 == 2 && numero2 == 1) {
    color = 'verde';
  } else if (numero1 == 1 && numero2 == 3 || numero1 == 3 && numero2 == 1) {
    color = 'naranja';
  } else if (numero1 == 2 && numero2 == 2) {
    color = 'azul';
  } else if (numero1 == 2 && numero2 == 3 || numero1 == 3 && numero2 == 2) {
    color = 'morado';
  } else if (numero1 == 3 && numero2 == 3) {
    color = 'rojo';
  } else {
    color = 'combinación no válida';
  }

  print('Su combinación es $color.');
}
