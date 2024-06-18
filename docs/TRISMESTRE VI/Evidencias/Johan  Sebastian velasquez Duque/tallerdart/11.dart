import 'dart:io';

void main() {
  String volver;
  double angA, angB, angC, ladoA, ladoB, ladoC;
  int menu;
   // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  do {
    // Iniciar variables
    volver = 's';
    menu = 0;
    angA = 0.0;
    angB = 0.0;
    angC = 0.0;
    ladoA = 0.0;
    ladoB = 0.0;
    ladoC = 0.0;

    // Entrada de Datos: Muestra el Menú en pantalla
    print("\n---------- MENU ----------");
    print("1. Ángulos");
    print("2. Lados");
    stdout.write("Seleccione una opción del menú: ");
    menu = int.parse(stdin.readLineSync()!);

    // Proceso2: Si la opción menú existe, va hasta el tipo de triángulo.
    //           Si no existe, muestra en pantalla un mensaje de error.
    switch (menu) {
      case 1:
        // Entrada de Datos
        print("\n-------------- Triángulo por Ángulos ------------------");
        //Proceso3: Se repiten las opciones hasta que los ángulos sean mayores a 0
        do {
          // Salida de Datos
          print("\nRecuerde que los ángulos deben ser mayores a 0\n");

          // Entrada de Datos
          stdout.write("Digite el ángulo A: ");
          angA = double.parse(stdin.readLineSync()!);
          stdout.write("Digite el ángulo B: ");
          angB = double.parse(stdin.readLineSync()!);
        } while (angA <= 0 || angB <= 0);

        // Proceso4: Se asigna el ángulo C
        angC = 180 - (angA + angB);

        // Proceso5: Se valida si el ángulo C es mayor a 0.
        //           Si no, Muestra un mensaje de error.
        if (angC > 0) {
          // Proceso6: Triángulo Rectángulo
          if (angA == 90 || angB == 90 || angC == 90) {
            print("Es un triángulo: RECTÁNGULO");
          }
          // Proceso7: Triángulo Obtusángulo
          if (angA > 90 || angB > 90 || angC > 90) {
            print("Es un triángulo: OBTUSÁNGULO");
          }
          // Proceso8: Triángulo Acutángulo
          if (angA < 90 && angB < 90 && angC < 90) {
            print("Es un triángulo: ACUTÁNGULO");
          }
        } else {
          print("Ángulos Incorrectos");
        }
        break;

      case 2:
        // Entrada de Datos
        print("\n-------------- Triángulo por Lados ------------------");
        // Proceso9: Se repiten las opciones hasta que los lados sean mayores a 0
        do {
          // Salida de Datos
          print("\nRecuerde que los lados deben ser mayores a 0\n");

          // Entrada de Datos
          stdout.write("Digite el lado A: ");
          ladoA = double.parse(stdin.readLineSync()!);
          stdout.write("Digite el lado B: ");
          ladoB = double.parse(stdin.readLineSync()!);
          stdout.write("Digite el lado C: ");
          ladoC = double.parse(stdin.readLineSync()!);
        } while (ladoA <= 0 || ladoB <= 0 || ladoC <= 0);

        // Proceso10: Se valida si la suma de los lados más cortos es mayor al lado más largo
        //            Si no, muestra un mensaje de error
        if (ladoA < ladoB + ladoC && ladoB < ladoA + ladoC && ladoC < ladoA + ladoB) {
          // Proceso11: Si dos lados son iguales, puede ser Isósceles o Equilátero
          //            Si no, es Escaleno
          if (ladoA == ladoB || ladoB == ladoC || ladoC == ladoA) {
            // Proceso12: Si los tres lados son iguales es Equilátero
            //            si no, es Isósceles.
            if (ladoA == ladoB && ladoB == ladoC) {
              print("Es un triángulo: EQUILÁTERO");
            } else {
              print("Es un triángulo: ISÓSCELES");
            }
          } else {
            print("Es un triángulo: ESCALENO");
          }
        } else {
          print("Lados Incorrectos");
        }
        break;

      default:
        print("La opción del menú no existe");
    }

    // Entrada de Datos: Volver al Menú
    print("");
    stdout.write("Para repetir digite < s >, para salir cualquier tecla: ");
    volver = stdin.readLineSync()!;
  } while (volver == 's');
  print("Johan velasquez, ficha: 2693505");
}
