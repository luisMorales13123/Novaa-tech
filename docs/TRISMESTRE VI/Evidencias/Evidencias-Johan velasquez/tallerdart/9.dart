import 'dart:io';
import 'dart:math';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Variables
  double num1 = 0;
  double num2 = 0;
  double num3 = 0;
  double respuesta;

  // Menú
  print("\n" + "---------------MENÚ DE FIGURAS---------\n" + 
        "1-Triángulo\n"
        "2-Rectángulo\n"
        "3-Círculo\n"
        "---------------------------------------");
        
  stdout.write('Digite el número de la operación: \t');
  respuesta = double.parse(stdin.readLineSync()!);

  // Validar la opción seleccionada
  if (respuesta < 1 || respuesta > 3) {
    print("El número ingresado no está dentro de las opciones");
  } else {
    switch (respuesta) {
      case 1:
//-----------------------------------------------------------------------------------------
// // Área Triángulo
        print("Primero hallaremos el área de tu triángulo");
        stdout.write('Digita la base del triángulo: \t');
        num1 = double.parse(stdin.readLineSync()!);
        stdout.write('Digita la altura del triángulo: \t');
        num2 = double.parse(stdin.readLineSync()!);
        // Validar entradas
        if (num1 <= 0 || num2 <= 0) {
          print("El valor ingresado no puede ser 0 o menor");
        } else {
          print("El área de tu triángulo es: ${0.5 * num1 * num2}");
        }

// Perímetro Triángulo
        print("Ahora hallaremos el perímetro de tu triángulo");
        stdout.write('Digita el lado #1 del triángulo: \t');
        num1 = double.parse(stdin.readLineSync()!);
        stdout.write('Digita el lado #2 del triángulo: \t');
        num2 = double.parse(stdin.readLineSync()!);
        stdout.write('Digita el lado #3 del triángulo: \t');
        num3 = double.parse(stdin.readLineSync()!);
        // Validar entradas
        if (num1 <= 0 || num2 <= 0 || num3 <= 0) {
          print("El valor ingresado no puede ser 0 o menor");
        } else {
          print("El perímetro de tu triángulo es: ${num1 + num2 + num3}");
        }
        break;
//-----------------------------------------------------------------------------------------
      case 2:
// Área Rectángulo
        print("Primero hallaremos el área de tu rectángulo");
        stdout.write('Digita la base del rectángulo: \t');
        num1 = double.parse(stdin.readLineSync()!);
        stdout.write('Digita la altura del rectángulo: \t');
        num2 = double.parse(stdin.readLineSync()!);
        // Validar entradas
        if (num1 <= 0 || num2 <= 0) {
          print("El valor ingresado no puede ser 0 o menor");
        } else {
          print("El área de tu rectángulo es: ${num1 * num2}");
        }

// Perímetro Rectángulo
        print("El perímetro de tu rectángulo es: ${2 * (num1 + num2)}");
        break;
//-----------------------------------------------------------------------------------------
      case 3:
// Área Círculo
        print("Primero hallaremos el área de tu círculo");
        stdout.write('Digita el radio: \t');
        num1 = double.parse(stdin.readLineSync()!);
        // Validar entrada
        if (num1 <= 0) {
          print("El valor ingresado no puede ser 0 o menor");
        } else {
          print("El área de tu círculo es: ${pi * num1 * num1}");
          print("El perímetro de tu círculo es: ${2 * pi * num1}");
        }
        break;
//-----------------------------------------------------------------------------------------
      default:
        print("Opción no válida.");
        break;
    }
  }

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
  print("Johan velasquez, ficha: 2693505");
}