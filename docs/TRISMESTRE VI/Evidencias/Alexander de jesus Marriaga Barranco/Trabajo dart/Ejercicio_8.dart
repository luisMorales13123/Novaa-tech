/*1.8.	Permite seleccionar en un menú, 10 operaciones matemáticas básicas: suma, resta, 
multiplicación, división, módulo, cuadrado, raíz cuadrada, potencia, porcentaje y un número aleatorio.*/

// Codigo 1.8 //

import 'dart:math';
import 'dart:io';

void main() {
  print("Seleccione una operación:");
  print("1. Suma");
  print("2. Resta");
  print("3. Multiplicación");
  print("4. División");
  print("5. Módulo");
  print("6. Cuadrado");
  print("7. Raíz Cuadrada");
  print("8. Potencia");
  print("9. Porcentaje");
  print("10. Número aleatorio");

  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      realizarSuma();
      break;
    case 2:
      realizarResta();
      break;
    case 3:
      realizarMultiplicacion();
      break;
    case 4:
      realizarDivision();
      break;
    case 5:
      realizarModulo();
      break;
    case 6:
      realizarCuadrado();
      break;
    case 7:
      realizarRaizCuadrada();
      break;
    case 8:
      realizarPotencia();
      break;
    case 9:
      realizarPorcentaje();
      break;
    case 10:
      generarNumeroAleatorio();
      break;
    default:
      print("Opción no válida");
  }
}

void realizarSuma() {
  print("Ingrese el primer número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);
  double resultado = num1 + num2;
  print("La suma es: $resultado");
}

void realizarResta() {
  print("Ingrese el primer número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);
  double resultado = num1 - num2;
  print("La resta es: $resultado");
}

void realizarMultiplicacion() {
  print("Ingrese el primer número:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese el segundo número:");
  double num2 = double.parse(stdin.readLineSync()!);
  double resultado = num1 * num2;
  print("La multiplicación es: $resultado");
}

void realizarDivision() {
  print("Ingrese el dividendo:");
  double dividendo = double.parse(stdin.readLineSync()!);
  print("Ingrese el divisor:");
  double divisor = double.parse(stdin.readLineSync()!);
  if (divisor != 0) {
    double resultado = dividendo / divisor;
    print("La división es: $resultado");
  } else {
    print("Imposible dividir por cero.");
  }
}

void realizarModulo() {
  print("Ingrese el dividendo:");
  int dividendo = int.parse(stdin.readLineSync()!);
  print("Ingrese el divisor:");
  int divisor = int.parse(stdin.readLineSync()!);
  if (divisor != 0) {
    int resultado = dividendo % divisor;
    print("El módulo es: $resultado");
  } else {
    print("Imposible calcular el módulo por cero.");
  }
}

void realizarCuadrado() {
  print("Ingrese el número:");
  double num = double.parse(stdin.readLineSync()!);
  double resultado = num * num;
  print("El cuadrado es: $resultado");
}

void realizarRaizCuadrada() {
  print("Ingrese el número:");
  double num = double.parse(stdin.readLineSync()!);
  if (num >= 0) {
    double resultado = sqrt(num);
    print("La raíz cuadrada es: $resultado");
  } else {
    print("No se puede calcular la raíz cuadrada de un número negativo.");
  }
}

void realizarPotencia() {
  print("Ingrese la base:");
  num base = num.parse(stdin.readLineSync()!);
  print("Ingrese el exponente:");
  num exponente = num.parse(stdin.readLineSync()!);
  num resultado = pow(base, exponente);
  print("La potencia es: $resultado");
}

void realizarPorcentaje() {
  print("Ingrese el número:");
  double num = double.parse(stdin.readLineSync()!);
  print("Ingrese el porcentaje:");
  double porcentaje = double.parse(stdin.readLineSync()!);
  double resultado = (porcentaje / 100) * num;
  print("El $porcentaje% de $num es: $resultado");
}

void generarNumeroAleatorio() {
  print("Ingrese el límite inferior:");
  int limiteInferior = int.parse(stdin.readLineSync()!);
  print("Ingrese el límite superior:");
  int limiteSuperior = int.parse(stdin.readLineSync()!);
  Random random = Random();
  int numeroAleatorio = limiteInferior + random.nextInt(limiteSuperior - limiteInferior + 1);
  print("El número aleatorio entre $limiteInferior y $limiteSuperior es: $numeroAleatorio");
}
