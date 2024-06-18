/*1.9.Muestre un menú para la selección (1. Triángulo, 2. Rectángulo y 3. Círculo); 
luego pida los datos necesarios para la solución y muestre en pantalla el nombre de la figura, 
su área en unidades cuadradas y su perímetro en unidades simples.Recuerde que no existen 
áreas o perímetros menores o iguales a cero.*/

// Codigo 1.10 //

import 'dart:math';
import 'dart:io';

void main() {

  stdout.write("Ingrese el radio del cilindro en metros: ");
  double radio = double.parse(stdin.readLineSync()!);
  
  stdout.write("Ingrese la altura del cilindro en metros: ");
  double altura = double.parse(stdin.readLineSync()!);
  
  double areaLateral = 2 * pi * radio * altura;
  
 
  double areaTapa = 2 * pi * radio * radio;
  

  double perimetroBase = 2 * pi * radio;
  

  double areaTotal = areaLateral + areaTapa;
  

  double volumen = pi * radio * radio * altura;
  

  print("\n Para el cilindro con radio $radio m y altura $altura m:");
  print("El área lateral es de ${areaLateral.toStringAsFixed(2)} m^2.");
  print("El área de las tapas es de ${areaTapa.toStringAsFixed(2)} m^2.");
  print("El perímetro de la base es de ${perimetroBase.toStringAsFixed(2)} m.");
  print("El área total del cilindro es de ${areaTotal.toStringAsFixed(2)} m^2.");
  print("El volumen del cilindro es de ${volumen.toStringAsFixed(2)} m^3.");
}
