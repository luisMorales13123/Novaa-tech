import 'dart:io';
import 'dart:math';

void main() {
  // Solicitar la cantidad de usuarios
  stdout.write('Ingrese la cantidad de usuarios: ');
  int numUsuarios = int.parse(stdin.readLineSync()!);

  // Validar que haya al menos un usuario
  if (numUsuarios <= 0) {
    print('Debe ingresar al menos un usuario.');
    return;
  }

  // Inicializar acumulado y saldos de jugadores
  int acumulado = 0;
  List<int> saldos = List.filled(numUsuarios, 0);

  // Ciclo principal del juego (mientras el acumulado sea mayor que 0)
  while (acumulado >= 0) {
    print('\nAcumulado actual: $acumulado');

    // Iterar por cada jugador
    for (int i = 0; i < numUsuarios; i++) {
      // Mostrar jugador actual
      print('\nTurno del jugador ${i + 1}:');

      // Primer tiro inicial del jugador
      int primerTiro = lanzarDado();

      // Si el primer tiro es 1 o 6, pierde y coloca una moneda en el acumulado
      if (primerTiro == 1 || primerTiro == 6) {
        print('Primer tiro: $primerTiro - Pierde, coloca una moneda en el acumulado.');
        acumulado++;
      } else {
        // Si el primer tiro es otro número, apostará hasta el máximo del acumulado
        stdout.write('Primer tiro: $primerTiro - Ingrese la cantidad a apostar (máximo $acumulado): ');
        int apuesta = int.parse(stdin.readLineSync()!);

        // Validar que la apuesta no sea mayor que el acumulado
        if (apuesta > acumulado) {
          print('No puede apostar más de lo que hay en el acumulado.');
          continue; // Saltar al siguiente jugador
        }

        // Segundo tiro del jugador
        int segundoTiro = lanzarDado();

        // Mostrar resultado del segundo tiro
        print('Segundo tiro: $segundoTiro');

        // Comparar segundo tiro con primer tiro
        if (segundoTiro > primerTiro) {
          // Si el segundo tiro es mayor que el primero, el jugador gana la apuesta
          print('¡Gana $apuesta!');

          // Actualizar el saldo del jugador
          saldos[i] += apuesta;
          acumulado -= apuesta;
        } else {
          // Si el segundo tiro no es mayor, el jugador pierde y coloca en el acumulado lo apostado
          print('No gana, coloca $apuesta en el acumulado.');

          // Actualizar el saldo del jugador
          saldos[i] -= apuesta;
          acumulado += apuesta;
        }
      }
    }
  }

  // Mostrar resultados finales de cada jugador
  print('\nResultados finales:');
  for (int i = 0; i < numUsuarios; i++) {
    print('Jugador ${i + 1}: ${saldos[i]}');
  }
}

// Función para simular el lanzamiento de un dado (número aleatorio entre 1 y 6)
int lanzarDado() {
  Random random = Random();
  return random.nextInt(6) + 1;
}
