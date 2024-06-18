/**
 * 1.15.	Muestre en pantalla todas las tablas de multiplicar del 1 al 10.
 */

import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");
  //contador de la tabla macro
  int numero;
  //contador de la tabla micro
  int i;

  for (numero = 1; numero <=10; numero++){
  //separacion de las tablas 
 print("\n" + ("-" * 20) + "\n");

 //contador de la tabla macro
  stdout.write('TABLA DEL $numero \n');

//contador de la tabla micro
  for (i = 1; i <= 10; i++) {

    //concatenar la respuesta
    print('$numero x $i = ${numero * i}' );
  }}
  
  print("\n" + ("-" * 20) + "\n");
   print("Johan velasquez, ficha: 2693505");
}
 
