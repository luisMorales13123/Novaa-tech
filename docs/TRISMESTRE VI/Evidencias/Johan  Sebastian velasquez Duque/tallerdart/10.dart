import 'dart:io';
import 'dart:math';

void main() {
   // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");
  double radio;
  double altura;

print("HALLEMOS EL AREA, PERIMETRO Y VOLUMEN DE TU CILINDRO ");
  // Preguntar por el radio
  stdout.write('Digite el radio del cilindro: ');
  radio = double.parse(stdin.readLineSync()!);

  // Preguntar por la altura
  stdout.write('Digite la altura del cilindro: ');
  altura = double.parse(stdin.readLineSync()!);

  // Calcular el área total del cilindro con tapa
  double areaTotal = 2 * pi * radio * (radio + altura);

  // Calcular la circunferencia de la base (perímetro)
  double perimetroBase = 2 * pi * radio;

  // Calcular el volumen del cilindro
  double volumen = pi * pow(radio, 2) * altura;

  // Imprimir los resultados
  print("El área total del cilindro con tapa es de $areaTotal");
  print("La circunferencia de la base (perímetro) es de $perimetroBase");
  print("El volumen del cilindro es de $volumen");
  print("Johan velasquez, ficha: 2693505");
}
