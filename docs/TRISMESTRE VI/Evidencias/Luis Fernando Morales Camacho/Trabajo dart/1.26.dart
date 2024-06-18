import 'dart:io';
import 'dart:math';

void main() {
  // Paso 1: Solicitar la cantidad de usuarios
  stdout.write('Ingrese la cantidad de jugadores: ');
  int cantidadJugadores = int.parse(stdin.readLineSync()!);

  // Paso 2: Inicializar el acumulado
  int acumulado = 1;

  // Paso 3: Jugar mientras el acumulado sea mayor que 0
  while (acumulado > 0) {
    stdout.writeln('\nAcumulado actual: $acumulado\n');

    // Iterar por cada jugador
    for (int jugador = 1; jugador <= cantidadJugadores; jugador++) {
      stdout.writeln('Jugador $jugador, es tu turno.');

      // Primer tiro
      int primerTiro = _lanzarDado();
      stdout.writeln('Primer tiro: $primerTiro');

      if (primerTiro == 1 || primerTiro == 6) {
        stdout.writeln('Perdiste. Coloca una moneda en el acumulado.');
        acumulado++;
      } else {
        // Apostar hasta el máximo del acumulado
        stdout.write('Ingresa tu apuesta (hasta el máximo del acumulado, actualmente $acumulado): ');
        int apuesta = int.parse(stdin.readLineSync()!);
        apuesta = min(apuesta, acumulado);

        // Segundo tiro
        int segundoTiro = _lanzarDado();
        stdout.writeln('Segundo tiro: $segundoTiro');

        if (segundoTiro > primerTiro) {
          stdout.writeln('¡Ganaste! Recibes $apuesta del acumulado.');
          acumulado -= apuesta;
        } else {
          stdout.writeln('Perdiste. Colocas tu apuesta en el acumulado.');
          acumulado += apuesta;
        }
      }
    }
  }

  stdout.writeln('\nJuego terminado. El acumulado llegó a ser 0 o menos.');
}

int _lanzarDado() {
  return Random().nextInt(6) + 1;
}
