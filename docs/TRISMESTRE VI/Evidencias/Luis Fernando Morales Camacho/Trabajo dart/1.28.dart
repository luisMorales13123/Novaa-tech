import 'dart:io';

void main() {
  int opcion;

  do {
    // Mostrar el menú de opciones
    print('\nMenú de funciones de suma:');
    print('1. Sumar sin parámetros y sin retorno de valor');
    print('2. Sumar con parámetros y sin retorno de valor');
    print('3. Sumar sin parámetros y con retorno de valor');
    print('4. Sumar con parámetros y con retorno de valor');
    print('5. Salir');
    stdout.write('Ingrese el número de la opción deseada: ');

    // Leer la opción del usuario
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        sumarSinParametrosYSinRetorno();
        break;
      case 2:
        sumarConParametrosYSinRetorno();
        break;
      case 3:
        double resultado = sumarSinParametrosConRetorno();
        print('El resultado de la suma es: $resultado');
        break;
      case 4:
        double resultado = sumarConParametrosConRetorno(10.5, 20.7);
        print('El resultado de la suma es: $resultado');
        break;
      case 5:
        print('Saliendo del programa.');
        break;
      default:
        print('Opción no válida. Por favor, ingrese un número del 1 al 5.');
    }
  } while (opcion != 5);
}

// Función 1: Sumar sin parámetros y sin retorno de valor
void sumarSinParametrosYSinRetorno() {
  int a = 5, b = 10;
  int suma = a + b;
  print('La suma de $a y $b es: $suma');
}

// Función 2: Sumar con parámetros y sin retorno de valor
void sumarConParametrosYSinRetorno() {
  int num1, num2;
  stdout.write('Ingrese el primer número: ');
  num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Ingrese el segundo número: ');
  num2 = int.parse(stdin.readLineSync()!);
  int suma = num1 + num2;
  print('La suma de $num1 y $num2 es: $suma');
}

// Función 3: Sumar sin parámetros y con retorno de valor
double sumarSinParametrosConRetorno() {
  double a = 15.3, b = 20.7;
  double suma = a + b;
  return suma;
}

// Función 4: Sumar con parámetros y con retorno de valor
double sumarConParametrosConRetorno(double num1, double num2) {
  double suma = num1 + num2;
  return suma;
}
