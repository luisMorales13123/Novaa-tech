import 'dart:io';
void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Declarar constantes y variables
  double num01;
  double num02;
  double res1;
  double res2;
  double res3;
  double res4;

  // Entrada de Datos
  stdout.write('Digite el primer número: \t');
  num01 = double.parse(stdin.readLineSync()!);
  stdout.write('Digite el segundo número: \t');
  num02 = double.parse(stdin.readLineSync()!);

  if (num01 == 0 && num02 == 0) {
    stdout.write("Digita un número mayor a cero");
  } else {
    // Proceso suma
    res1 = num01 + num02;
    // Proceso resta
    res2 = num01 - num02;
    // Proceso multiplicación
    res3 = num01 * num02;
    // Proceso división
    res4 = num01 / num02;

    // Salida de datos
    print("La respuesta a la suma de los dos números ingresados es: " + res1.toString());
    print("\n" + ("-" * 20) + "\n");
    print("La respuesta a la resta de los dos números ingresados es: " + res2.toString());
    print("\n" + ("-" * 20) + "\n");
    print("La respuesta a la división de los dos números ingresados es: " + res4.toString());
    print("\n" + ("-" * 20) + "\n");
    print("La respuesta a la multiplicación de los dos números ingresados es: " + res3.toString());
    // Fin del algoritmo
    print("\n" + ("-" * 50) + "\n");
  }
  print("Johan velasquez, ficha: 2693505");
}
