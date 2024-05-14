//import 'dart:io';
import 'dart:math';

void main() {
  double radio = 3;
  double altura = 5;

  var resultado = calcularCilindro(radio, altura);
  print("El área total del cilindro es: ${resultado.areaTotal} metros cuadrados");
  print("El perímetro de la base del cilindro es: ${resultado.perimetroBase} metros");
  print("El volumen del cilindro es: ${resultado.volumen} metros cúbicos");
}

class Cilindro {
  final double areaTotal;
  final double perimetroBase;
  final double volumen;

  Cilindro(this.areaTotal, this.perimetroBase, this.volumen);
}

Cilindro calcularCilindro(double radio, double altura) {
  // Área lateral
  double areaLateral = 2 * pi * radio * altura;

  // Área de la tapa
  double areaTapa = pi * pow(radio, 2);

  // Área total (incluyendo dos tapas)
  double areaTotal = areaLateral + 2 * areaTapa;

  // Perímetro de la base
  double perimetroBase = 2 * pi * radio;

  // Volumen
  double volumen = pi * pow(radio, 2) * altura;

  return Cilindro(areaTotal, perimetroBase, volumen);
}
