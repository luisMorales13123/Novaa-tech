import 'dart:math';

void main() {
  var random = Random();
  int paresIguales = 0;
  int intentos = 0;

  while (intentos < 3) {
    int numero1 = random.nextInt(6) + 1;
    int numero2 = random.nextInt(6) + 1;

    print('Lanzamiento ${intentos + 1}: $numero1, $numero2');

    if (numero1 == numero2 && esPar(numero1) && esPar(numero2)) {
      print('¡Lanzar de nuevo! Ambos números son pares e iguales.');
      paresIguales++;
    } else {
      paresIguales = 0; // Reiniciar el contador si no son pares iguales
      print('¡Lanza de nuevo! Números no son pares iguales.');
    }

    intentos++;

    if (paresIguales == 3) {
      print('¡Saca una ficha!');
      return; // Salir del programa
    }
  }

  if (paresIguales < 3) {
    print('¡Lanza de nuevo! No se obtuvieron pares iguales en tres lanzamientos consecutivos.');
  }
}

bool esPar(int numero) {
  return numero % 2 == 0;
}