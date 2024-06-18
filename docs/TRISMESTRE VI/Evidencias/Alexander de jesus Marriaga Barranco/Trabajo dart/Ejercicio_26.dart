/* 1.26 Permita jugar guayabita, primero se ingresarán la cantidad de usuarios,
el acumulado se debe mostrar antes de cada tiro, cada jugador tendrá un tiro inicial
si este es 1 o 6 se pierde y debe colocar una moneda en el acumulado, si es otro número
apostará hasta el máximo del acumulado, ganará el total apostado si el segundo tiro es 
mayor que el primer tiro de lo contrario colocará en el acumulado lo apostado,
el juego se repetirá siempre y cuando el acumulado sea mayor que 0.*/

// Codigo 1.26 //

import 'dart:io';
import 'dart:math';

void main() {
  jugarGuayabita();
}

void jugarGuayabita() {
  int acumulado = 1; 

  while (acumulado > 0) {
    print("\nAcumulado actual: $acumulado");

    int numJugadores = solicitarCantidadJugadores();

    for (int jugador = 1; jugador <= numJugadores; jugador++) {
      print("\nTurno del jugador $jugador:");

      int primerTiro = generarTiro();
      print("Primer tiro: $primerTiro");

      if (primerTiro == 1 || primerTiro == 6) {
        print("El jugador pierde. Se coloca una moneda en el acumulado.");
        acumulado += 1;
      } else {
      
        int maxApuesta = acumulado;

     
        int apuesta = solicitarApuesta(maxApuesta);

       
        int segundoTiro = generarTiro();
        print("Segundo tiro: $segundoTiro");

        if (segundoTiro > primerTiro) {
          print("¡El jugador gana $apuesta monedas!");
          acumulado -= apuesta;
        } else {
          print("El jugador pierde. Se agrega al acumulado $apuesta monedas.");
          acumulado += apuesta;
        }
      }
    }
  }

  print("\nEl juego ha finalizado.");
}

int solicitarCantidadJugadores() {
  print("Ingrese la cantidad de jugadores:");
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

int generarTiro() {
  Random random = Random();
  return random.nextInt(12) + 1;
}

int solicitarApuesta(int maximo) {
  print("Ingrese su apuesta (máximo $maximo):");
  String input = stdin.readLineSync()!;
  int apuesta = int.parse(input);

  while (apuesta < 1 || apuesta > maximo) {
    print("La apuesta debe estar entre 1 y $maximo.");
    print("Ingrese su apuesta (máximo $maximo):");
    input = stdin.readLineSync()!;
    apuesta = int.parse(input);
  }

  return apuesta;
}