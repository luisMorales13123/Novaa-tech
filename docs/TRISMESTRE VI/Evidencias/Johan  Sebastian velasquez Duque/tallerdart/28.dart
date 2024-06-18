import 'dart:io';

void main() {
  int opcion;

  do {
    // Mostrar menú y solicitar opción al usuario
    print("\nMenú de funciones para sumar:");
    print("1. Sumar sin parámetros y sin retorno de valor");
    print("2. Sumar con parámetros y sin retorno de valor");
    print("3. Sumar sin parámetros y con retorno de valor");
    print("4. Sumar con parámetros y con retorno de valor");
    print("0. Salir");
    stdout.write("Ingrese la opción deseada: ");
    opcion = int.parse(stdin.readLineSync()!);

    // Según la opción elegida, ejecutar la función correspondiente
    switch (opcion) {
      case 1:
        sumarSinParametrosSinRetorno();
        break;
      case 2:
        sumarConParametrosSinRetorno();
        break;
      case 3:
        int resultado = sumarSinParametrosConRetorno();
        print("El resultado de la suma es: $resultado");
        break;
      case 4:
        int resultado = sumarConParametrosConRetorno(5, 3); 
        print("El resultado de la suma es: $resultado");
        break;
      case 0:
        print("Saliendo del programa.");
        break;
      default:
        print("Opción no válida. Intente nuevamente.");
        break;
    }
  } while (opcion != 0);
}

// Función 1: Sumar sin parámetros y sin retorno de valor
void sumarSinParametrosSinRetorno() {
  int a = 5;
  int b = 3;
  int suma = a + b;
  print("La suma de $a y $b es: $suma");
}

// Función 2: Sumar con parámetros y sin retorno de valor
void sumarConParametrosSinRetorno() {
  int suma = 10 + 20;
  print("La suma de 10 y 20 es: $suma");
}

// Función 3: Sumar sin parámetros y con retorno de valor
int sumarSinParametrosConRetorno() {
  int a = 15;
  int b = 7;
  return a + b;
}

// Función 4: Sumar con parámetros y con retorno de valor
int sumarConParametrosConRetorno(int a, int b) {
  return a + b;
}
