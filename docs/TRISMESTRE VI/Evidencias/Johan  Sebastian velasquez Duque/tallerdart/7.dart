import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Variables
  int color1;
  int color2;

  print("\n" + "---------------MENÚ DE COLORES---------\n" + 
        "1-Amarillo\n"
        "2-Azul\n"
        "3-Rojo\n");
//llena varibales
      stdout.write('Digite el primer color: \t');
      color1 = int.parse(stdin.readLineSync()!);
      stdout.write('Digite el segundo color: \t');
      color2 = int.parse(stdin.readLineSync()!);
//validación
  if (color1 < 1 || color1 > 3 || color2 < 1 || color2 > 3) {
    stdout.write("Digita un número que esté dentro de las opciones (1, 2, 3)");
  } else {
    if (color1 == color2) {
      print(("\n"+ "-" * 10) +"El color es el mismo que ingresaste"+ ("-" * 10) );
    } else if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
      print(("\n"+ "-" * 10)+"\nLa combinación da verde"+ ("-" * 10));
    } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
      print(("\n"+ "-" * 10)+"La combinación da naranja"+ ("-" * 10));
    } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
      print(("\n"+ "-" * 10)+"La combinación da morado"+ ("-" * 10));
    }
    // Fin del algoritmo
    print("\n" + ("-" * 50) + "\n");
  }
  print("Johan velasquez, ficha: 2693505");
}
