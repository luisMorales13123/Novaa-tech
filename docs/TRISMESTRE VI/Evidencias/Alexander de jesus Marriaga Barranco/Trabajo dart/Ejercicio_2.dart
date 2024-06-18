/* 1.2.	Solicite su nombre, sexo, edad, salario (incluyendo centavos),
 si tiene o no vehículo de transporte y; lo muestre en pantalla.*/

// Codigo 1.2 //

import 'dart:io';

void main() {

  stdout.write("\nIngrese su nombre: ");
  String nombre = stdin.readLineSync()!;
  
  stdout.write("Ingrese su sexo: ");
  String sexo = stdin.readLineSync()!;
  
  stdout.write("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);
  
  stdout.write("Ingrese su salario en pesos: ");
  double salario = double.parse(stdin.readLineSync()!);
  
  stdout.write("¿Cuenta con vehiculo? (Sí/No): ");
  String tieneVehiculoStr = stdin.readLineSync()!;

  bool tieneVehiculo = (tieneVehiculoStr.toLowerCase() == 'sí');
  

  print("\nDatos ingresados:");
  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(3)}");
  print("Tiene vehículo de transporte: ${tieneVehiculo ? 'Sí' : 'No'}");
  print("\n");

}