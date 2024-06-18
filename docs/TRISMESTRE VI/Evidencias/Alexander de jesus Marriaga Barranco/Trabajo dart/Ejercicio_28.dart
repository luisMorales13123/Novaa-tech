/* 1.28.	Muestre un menú de funciones para sumar con las siguientes opciones: 
1. Sin parámetros y sin retorno de valor;
2. Con parámetros y sin retorno de valor;
3. Sin parámetros y con retorno de valor;
4. Con parámetros y con retornos de valor*/

// Codigo 1.28 //


import 'dart:io';

void main() {
  int opcion;
  do {

    print("\n=== Menú de funciones para sumar ===");
    print("1. Sin parámetros y sin retorno de valor");
    print("2. Con parámetros y sin retorno de valor");
    print("3. Sin parámetros y con retorno de valor");
    print("4. Con parámetros y con retorno de valor");
    print("0. Salir");
    stdout.write("Seleccione una opción: ");
    

    opcion = int.parse(stdin.readLineSync()!);


    switch (opcion) {
      case 1:
        sumarSinParametrosSinRetorno();
        break;
      case 2:
        sumarConParametrosSinRetorno();
        break;
      case 3:
        int resultadoSinParametros = sumarSinParametrosConRetorno();
        print("La suma sin parámetros y con retorno es: $resultadoSinParametros");
        break;
      case 4:
        stdout.write("Ingrese el primer número: ");
        int a = int.parse(stdin.readLineSync()!);

        stdout.write("Ingrese el segundo número: ");
        int b = int.parse(stdin.readLineSync()!);

        int resultadoConParametros = sumarConParametrosConRetorno(a, b);
        print("La suma con parámetros y con retorno es: $resultadoConParametros");
        break;
      case 0:
        print("Saliendo del programa.");
        break;
      default:
        print("Opción no válida. Inténtelo de nuevo.");
    }

  } while (opcion != 0);
}


void sumarSinParametrosSinRetorno() {
  int a = 5;
  int b = 3;
  int resultado = a + b;
  print("La suma de $a + $b = $resultado");
}


void sumarConParametrosSinRetorno() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);

  int resultado = a + b;
  print("La suma de $a + $b = $resultado");
}


int sumarSinParametrosConRetorno() {
  int a = 10;
  int b = 7;
  int resultado = a + b;
  return resultado;
}


int sumarConParametrosConRetorno(int a, int b) {
  int resultado = a + b;
  return resultado;
}
