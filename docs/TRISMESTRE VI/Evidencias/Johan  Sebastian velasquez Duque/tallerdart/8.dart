import 'dart:io';
import 'dart:math';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Variables
  double num1;
  double num2=0;
  int respuesta;

  print("\n" + "---------------MENÚ DE OPERACIÓNES---------\n" + 
        "1-Suma\n"
        "2-Resta\n"
        "3-Multiplicación\n"
        "4-División\n"
        "5-Cuadrado\n"
        "6-Raíz cuadrada\n"
        "7-Porcentaje\n"
        "8-Número aleatorio\n"
        "9-Módulo\n");

  stdout.write('Digite el número de la operación: \t');
  respuesta = int.parse(stdin.readLineSync()!);

  if (respuesta >= 1 && respuesta <= 9) {
    stdout.write('Digite el primer número: \t');
    num1 = double.parse(stdin.readLineSync()!);

    if (respuesta != 5 && respuesta != 6 && respuesta != 8) {
      stdout.write('Digite el segundo número: \t');
      num2 = double.parse(stdin.readLineSync()!);
    }

    switch (respuesta) {
      case 1:
        print("El resultado de la suma es: ${num1 + num2}");
      case 2:
        print("El resultado de la resta es: ${num1 - num2}");
      case 3:
        print("El resultado de la multiplicación es: ${num1 * num2}");
      case 4:
        if (num1 != 0|| num2 != 0) {
          print("El resultado de la división es: ${num1 / num2}");
        } else {
          print("No se puede dividir por cero.");
        }
      case 5:
        print("El resultado del cuadrado es: ${num1 * num1}");
      case 6:
        print("El resultado de la raíz cuadrada es: ${sqrt(num1)}");
      case 7:
        print("El resultado del porcentaje es: ${(num1 * num2) / 100}");
      case 8:
        print("El número aleatorio es: ${Random().nextDouble() * num1}");
      case 9:
        print("El resultado del módulo es: ${num1 % num2}");
      default:
        print("Opción no válida.");
        break;
    }
  } else {
    print("Opción no válida.");
  }

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
  print("Johan velasquez, ficha: 2693505");
}
