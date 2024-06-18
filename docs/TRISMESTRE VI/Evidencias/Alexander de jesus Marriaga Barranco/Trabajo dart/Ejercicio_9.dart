/*1.9.Muestre un menú para la selección (1. Triángulo, 2. Rectángulo y 3. Círculo); 
luego pida los datos necesarios para la solución y muestre en pantalla el nombre de la figura, 
su área en unidades cuadradas y su perímetro en unidades simples.Recuerde que no existen 
áreas o perímetros menores o iguales a cero.*/

// Codigo 1.9 //

import 'dart:math';
import 'dart:io';

void main() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      calcularTriangulo();
      break;
    case 2:
      calcularRectangulo();
      break;
    case 3:
      calcularCirculo();
      break;
    default:
      print("Opción no válida");
  }
}

void calcularTriangulo() {
  print("Ingrese la base del triángulo:");
  double base = double.parse(stdin.readLineSync()!);
  print("Ingrese la altura del triángulo:");
  double altura = double.parse(stdin.readLineSync()!);

  if (base > 0 && altura > 0) {
    double area = (base * altura) / 2;
    double perimetro = base * 3; 
    print("Nombre de la figura: Triángulo");
    print("Área: $area unidades cuadradas");
    print("Perímetro: $perimetro unidades");
  } else {
    print("Los valores ingresados no son válidos.");
  }
}

void calcularRectangulo() {
  print("Ingrese la base del rectángulo:");
  double base = double.parse(stdin.readLineSync()!);
  print("Ingrese la altura del rectángulo:");
  double altura = double.parse(stdin.readLineSync()!);

  if (base > 0 && altura > 0) {
    double area = base * altura;
    double perimetro = 2 * (base + altura);
    print("Nombre de la figura: Rectángulo");
    print("Área: $area unidades cuadradas");
    print("Perímetro: $perimetro unidades");
  } else {
    print("Los valores ingresados no son válidos.");
  }
}

void calcularCirculo() {
  print("Ingrese el radio del círculo:");
  double radio = double.parse(stdin.readLineSync()!);

  if (radio > 0) {
    double area = pi * pow(radio, 2);
    double perimetro = 2 * pi * radio;
    print("Nombre de la figura: Círculo");
    print("Área: $area unidades cuadradas");
    print("Perímetro: $perimetro unidades");
  } else {
    print("El valor del radio ingresado no es válido.");
  }
}
