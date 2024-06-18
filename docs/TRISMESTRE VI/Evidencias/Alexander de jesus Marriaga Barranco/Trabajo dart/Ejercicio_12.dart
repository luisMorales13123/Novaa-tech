/*1.12.	Muestre dos números aleatorios del 1 al 6 (como los dados), de sacar dos números pares 
(1,1 o 2,2 o 3,3 o 4,4 o 5,5 o 6,6) saldrá un mensaje en pantalla que dice lanzar de nuevo,
 de lazar en dos ocasiones más y de nuevo sean pares, saldrá un mensaje en pantalla
¡Saca una ficha!, de no sacar pares saldrá en pantalla un mensaje ¡Lanza de nuevo!
(como en el juego parques).*/

// Codigo 1.12 //

import 'dart:math';

void main() {
  Random random = Random();
  int paresConsecutivos = 0;

  while (paresConsecutivos < 2) {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;

    print("Primer dado: $dado1");
    print("Segundo dado: $dado2");

    if (dado1 % 2 == 0 && dado2 % 2 == 0) {
      paresConsecutivos++;
      if (paresConsecutivos == 2) {
        print("¡Saca una ficha!");
      } else {
        print("¡Lanzar de nuevo!");
      }
    } else {
      print("¡Lanza de nuevo!");
      paresConsecutivos = 0; 
    }
  }
}
