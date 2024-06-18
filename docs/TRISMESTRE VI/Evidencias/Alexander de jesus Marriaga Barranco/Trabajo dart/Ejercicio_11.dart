/*1.11.	Encuentre el tipo de triángulo que se tiene, mostrando un menú que pida si se ingresaran 
ángulos o lados y se dé la opción para escoger uno de los dos. Si se selecciona por
ángulos la suma de los 3 ángulos debe ser 180° y si se selecciona por lados,
la suma de los dos lados más cortos debe ser mayor a la longitud del lado más largo, 
para que sean un triángulo. Y mostrar en pantalla su triángulo es: equilátero, isósceles o escaleno;
rectángulo, acutángulo u obtusángulo).Recuerde que no existen lados ni ángulos menores o iguales a cero.*/

// Codigo 1.11 //

import 'dart:io';

void main() {
  print("¿Cómo desea ingresar los datos del triángulo?");
  print("1. Ingresar ángulos");
  print("2. Ingresar lados");

  stdout.write("Ingrese su opción (1 o 2): ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    double angulo1, angulo2, angulo3;

    do {
      stdout.write("Ingrese el primer ángulo: ");
      angulo1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo ángulo: ");
      angulo2 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el tercer ángulo: ");
      angulo3 = double.parse(stdin.readLineSync()!);

      if (angulo1 <= 0 || angulo2 <= 0 || angulo3 <= 0) {
        print("Los ángulos deben ser mayores que cero. Intente de nuevo.");
      } else if (angulo1 + angulo2 + angulo3 != 180) {
        print(
            "La suma de los ángulos debe ser igual a 180°. Intente de nuevo.");
      }
    } while (angulo1 <= 0 ||
        angulo2 <= 0 ||
        angulo3 <= 0 ||
        angulo1 + angulo2 + angulo3 != 180);

    determinarTipoTriangulo(angulo1, angulo2, angulo3);
  } else if (opcion == 2) {
    double lado1, lado2, lado3;

    do {
      stdout.write("Ingrese la longitud del primer lado: ");
      lado1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la longitud del segundo lado: ");
      lado2 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese la longitud del tercer lado: ");
      lado3 = double.parse(stdin.readLineSync()!);

      if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
        print(
            "Las longitudes de los lados deben ser mayores que cero. Intente de nuevo.");
      } else if (!esTriangulo(lado1, lado2, lado3)) {
        print(
            "Las longitudes de los lados no forman un triángulo. Intente de nuevo.");
      }
    } while (lado1 <= 0 ||
        lado2 <= 0 ||
        lado3 <= 0 ||
        !esTriangulo(lado1, lado2, lado3));

    determinarTipoTriangulo(lado1, lado2, lado3);
  } else {
    print("Opción inválida. Por favor, ingrese 1 o 2.");
  }
}

bool esTriangulo(double lado1, double lado2, double lado3) {
  return lado1 + lado2 > lado3 &&
      lado1 + lado3 > lado2 &&
      lado2 + lado3 > lado1;
}

void determinarTipoTriangulo(double medida1, double medida2, double medida3) {
  if (medida1 == medida2 && medida2 == medida3) {
    print("El triángulo es equilátero.");
  } else if (medida1 == medida2 || medida1 == medida3 || medida2 == medida3) {
    print("El triángulo es isósceles.");
  } else {
    print("El triángulo es escaleno.");
  }

  if (medida1 * medida1 + medida2 * medida2 == medida3 * medida3 ||
      medida1 * medida1 + medida3 * medida3 == medida2 * medida2 ||
      medida2 * medida2 + medida3 * medida3 == medida1 * medida1) {
    print("El triángulo es rectángulo.");
  } else if (medida1 * medida1 + medida2 * medida2 < medida3 * medida3 ||
      medida1 * medida1 + medida3 * medida3 < medida2 * medida2 ||
      medida2 * medida2 + medida3 * medida3 < medida1 * medida1) {
    print("El triángulo es obtusángulo.");
  } else {
    print("El triángulo es acutángulo.");
  }
}
