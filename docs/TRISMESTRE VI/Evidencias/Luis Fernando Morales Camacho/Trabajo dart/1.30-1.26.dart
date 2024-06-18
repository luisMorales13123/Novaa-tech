import 'dart:io';
import 'dart:math';

void main() {
  // Archivo donde se guardará el acumulado
  File acumuladoFile = File('acumulado.txt');

  // Inicializar el acumulado
  int acumulado = _leerAcumulado(acumuladoFile);

  // Si no hay un valor válido en el archivo, iniciar con 1
  if (acumulado <= 0) {
    acumulado = 1;
    _escribirAcumulado(acumuladoFile, acumulado);
  }

  // Paso 1: Solicitar la cantidad de usuarios
  stdout.write('Ingrese la cantidad de jugadores: ');
  int cantidadJugadores = int.parse(stdin.readLineSync()!);

  // Paso 2: Jugar mientras el acumulado sea mayor que 0
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

      // Actualizar el acumulado en el archivo
      _escribirAcumulado(acumuladoFile, acumulado);
    }
  }

  stdout.writeln('\nJuego terminado. El acumulado llegó a ser 0 o menos.');
}

// Función para lanzar un dado (número entre 1 y 6)
int _lanzarDado() {
  return Random().nextInt(6) + 1;
}

// Función para leer el acumulado desde un archivo
int _leerAcumulado(File file) {
  try {
    String contents = file.readAsStringSync();
    return int.parse(contents);
  } catch (e) {
    return -1; // Valor inválido
  }
}

// Función para escribir el acumulado en un archivo
void _escribirAcumulado(File file, int acumulado) {
  file.writeAsStringSync(acumulado.toString());
}
