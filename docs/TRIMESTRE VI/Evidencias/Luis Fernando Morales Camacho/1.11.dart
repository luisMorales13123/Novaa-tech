import 'dart:io';

void main() {
  print("Seleccione una opción:");
  print("1. Ingresar ángulos");
  print("2. Ingresar lados");
  
  String opcion = stdin.readLineSync()!;
  
  if (opcion == '1') {
    // Ingresar ángulos
    print("Ingrese el primer ángulo:");
    double angulo1 = double.parse(stdin.readLineSync()!);
    
    print("Ingrese el segundo ángulo:");
    double angulo2 = double.parse(stdin.readLineSync()!);
    
    print("Ingrese el tercer ángulo:");
    double angulo3 = double.parse(stdin.readLineSync()!);
    
    if (angulo1 + angulo2 + angulo3 == 180) {
      print("Los ángulos forman un triángulo.");
      if (angulo1 == 90 || angulo2 == 90 || angulo3 == 90) {
        print("Es un triángulo rectángulo.");
      } else if (angulo1 < 90 && angulo2 < 90 && angulo3 < 90) {
        print("Es un triángulo acutángulo.");
      } else {
        print("Es un triángulo obtusángulo.");
      }
    } else {
      print("Los ángulos no suman 180°, no forman un triángulo.");
    }
  } else if (opcion == '2') {
    // Ingresar lados
    print("Ingrese el primer lado:");
    double lado1 = double.parse(stdin.readLineSync()!);
    
    print("Ingrese el segundo lado:");
    double lado2 = double.parse(stdin.readLineSync()!);
    
    print("Ingrese el tercer lado:");
    double lado3 = double.parse(stdin.readLineSync()!);
    
    if (lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1) {
      print("Los lados forman un triángulo.");
      if (lado1 == lado2 && lado2 == lado3) {
        print("Es un triángulo equilátero.");
      } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
        print("Es un triángulo isósceles.");
      } else {
        print("Es un triángulo escaleno.");
      }
    } else {
      print("Los lados no cumplen con la desigualdad triangular, no forman un triángulo.");
    }
  } else {
    print("Opción no válida.");
  }
}
