/**
 * 
 * 1.20.	Solicite un número, lo descomponga y muestre en pantalla cuántos dígitos tiene.
 */
import 'dart:io';

void main() {
   // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Solicitar al usuario que ingrese un número
  stdout.write('Ingresa un número: ');
  String input = stdin.readLineSync() ?? '';

  // Verificar que el input sea un número válido
  if (input.isEmpty || !esNumero(input)) {
    print('Entrada inválida. Debes ingresar un número.');
    return;
  }

  // Convertir el número ingresado a entero
  int numero = int.parse(input);

  // Obtener la cantidad de dígitos del número
  int cantidadDigitos = input.length;
  print('El número ingresado tiene $cantidadDigitos dígitos.');

  // Mostrar la descomposición del número
  mostrarDescomposicion(numero);
}

// Función para mostrar la descomposición del número en millones, centenas, decenas y unidades
void mostrarDescomposicion(int numero) {
  String numeroComoTexto = numero.toString();

  // Obtener los dígitos
  int millones = obtenerDigitoEnPosicion(numero, 6); // Millones
  int centenasMil = obtenerDigitoEnPosicion(numero, 5); // Centenas de mil
  int decenasMil = obtenerDigitoEnPosicion(numero, 4); // Decenas de mil
  int unidadesMil = obtenerDigitoEnPosicion(numero, 3); // Unidades de mil
  int centenas = obtenerDigitoEnPosicion(numero, 2); // Centenas
  int decenas = obtenerDigitoEnPosicion(numero, 1); // Decenas
  int unidades = obtenerDigitoEnPosicion(numero, 0); // Unidades

  // Mostrar la descomposición
  print('Descomposición del número:');
  print('Millones: $millones');
  print('Centenas de mil: $centenasMil');
  print('Decenas de mil: $decenasMil');
  print('Unidades de mil: $unidadesMil');
  print('Centenas: $centenas');
  print('Decenas: $decenas');
  print('Unidades: $unidades');
}

// Función para obtener el dígito en una posición específica
int obtenerDigitoEnPosicion(int numero, int posicion) {
  String numeroComoTexto = numero.toString();
  
  // Verificar si la posición solicitada es válida dentro del número
  if (posicion < 0 || posicion >= numeroComoTexto.length) {
    return 0; // Devolver 0 si la posición está fuera de rango
  }

  // Obtener el carácter correspondiente a la posición desde la derecha
  String digito = numeroComoTexto[numeroComoTexto.length - 1 - posicion];

  // Convertir el carácter a entero y retornar
  return int.parse(digito);
}

// Función para verificar si una cadena es un número válido
bool esNumero(String cadena) {
  final regex = RegExp(r'^[0-9]+$');
  return regex.hasMatch(cadena);
}
