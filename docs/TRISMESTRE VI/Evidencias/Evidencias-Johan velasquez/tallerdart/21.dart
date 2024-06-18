/**
 * 1.21.	Solicite 2 números por teclado, luego indique al usuario si desea la serie par o impar,
 *  después muestre en pantalla la 
 * serie par o impar según la elección desde el número menor que se ingresó al inicio hasta el número mayor.
*/
import 'dart:io';

void main() {
  // Solicitar números al usuario
  stdout.write('Ingresa el primer número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingresa el segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  // Preguntar al usuario si desea la serie par o impar
  stdout.write('¿Desea la serie par o impar? (P/I): ');
  String respuesta = stdin.readLineSync()!.toUpperCase();

  if (respuesta == 'P') {
    // Mostrar serie par
    print('Serie par desde $num1 hasta $num2:');
    mostrarSeriePar(num1, num2);
  } else if (respuesta == 'I') {
    // Mostrar serie impar
    print('Serie impar desde $num1 hasta $num2:');
    mostrarSerieImpar(num1, num2);
  } else {
    // Opción inválida
    print('Opción no válida. Debes elegir "P" para par o "I" para impar.');
  }
}

// Función para mostrar la serie de números pares
void mostrarSeriePar(int inicio, int fin) {
  // Determinar el inicio y fin del bucle según el orden de los números
  int inicioBucle = (inicio < fin) ? inicio : fin;
  int finBucle = (inicio < fin) ? fin : inicio;

  for (int i = inicioBucle; i <= finBucle; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// Función para mostrar la serie de números impares
void mostrarSerieImpar(int inicio, int fin) {
  // Determinar el inicio y fin del bucle según el orden de los números
  int inicioBucle = (inicio < fin) ? inicio : fin;
  int finBucle = (inicio < fin) ? fin : inicio;

  for (int i = inicioBucle; i <= finBucle; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
