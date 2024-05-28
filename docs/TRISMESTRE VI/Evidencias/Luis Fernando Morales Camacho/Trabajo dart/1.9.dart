import 'dart:io';
import 'dart:math';

void main() {
  var operacion;
  stdout.write(
      'Digite la operacion que deseea: \t  \n 1.triangulo \n 2.rectangulo \n 3.circulo : \t');
  var inputoperacion = stdin.readLineSync()!;

  operacion = int.parse(inputoperacion);
  var num1input;
  var num2input;
  var num3input;

  if (operacion == 1) {
    stdout.write('digite el lado 1: \t ');
    num1input = stdin.readLineSync()!;
    stdout.write('digite el lado 2: \t ');
    num2input = stdin.readLineSync()!;
    stdout.write('digite el lado 3: \t ');
    num3input = stdin.readLineSync()!;
  } else if (operacion == 2) {
    stdout.write('digite la longitud : \t ');
    num1input = stdin.readLineSync()!;
    stdout.write('digite el Ancho : \t ');
    num2input = stdin.readLineSync()!;
  } else {
    stdout.write('digite El radio del circulo : \t ');
    num1input = stdin.readLineSync()!;

  }
  switch (operacion) {
    case 1:

// convertimos en double estas variables y las almacenamos

//TRIANGULO
      var lado1 = double.parse(num1input);
      var lado2 = double.parse(num2input);
      var lado3 = double.parse(num3input);

//RECTANGULO

//Creamos una variable resulado la cual almacena la funcion triangulo
      var resultado = triangulo(lado1, lado2, lado3);

//Imprimimos los resultados y llamamos la parte del objeto que deseemos
      print("La longitud de la base del triángulo es: ${resultado.base}");
      print("La altura del triángulo es: ${resultado.altura}");
      print("La Area del triángulo es: ${resultado.area}");
      print("La perimetro del triángulo es: ${resultado.perimetro}");
      break;
    case 2:

// convertimos en double estas variables y las almacenamos



//RECTANGULO
      var logitud = double.parse(num1input);
      var ancho = double.parse(num2input);

//Creamos una variable resulado la cual almacena la funcion triangulo
      var resultado = rectangulo(logitud, ancho);

//Imprimimos los resultados y llamamos la parte del objeto que deseemos
      print("La area de la base del triángulo es: ${resultado.Area}");
      print("El perimetro de la base del triángulo es: ${resultado.Perimetro}");

      break;
          case 3:



double radio = double.parse(num1input);

  var circulo = calcularCirculo(radio);

  print("El radio del círculo es: ${circulo.radio}");
  print("El área del círculo es: ${circulo.area}");
  print("El perímetro (circunferencia) del círculo es: ${circulo.perimetro}");



      break;
    default:
  }

  
}

// creamos una clase la cual abarca los variables de las operaciones
class BaseAltura {
  //creamos la variables final para que una vez se asignen los valores no se puedan cambiar
  final double base;
  final double altura;
  final double area;
  final double perimetro;
//creamos un constructor el cual manda las variables  en espera de datos
  BaseAltura(this.base, this.altura, this.area, this.perimetro);
}

class Rectangulo {
  final double Area;
  final double Perimetro;

  Rectangulo(this.Area, this.Perimetro);
}

class Circulo {
  final double radio;
  final double area;
  final double perimetro;

  // Constructor
  Circulo(this.radio, this.area, this.perimetro);
}

BaseAltura triangulo(double lado1, double lado2, double lado3) {
  double s = (lado1 + lado2 + lado3) / 2; // Semiperímetro
  double area =
      sqrt(s * (s - lado1) * (s - lado2) * (s - lado3)); //Calculamos area
  double maximo = max(lado1, max(lado2, lado3));
  // Calcular la altura utilizando la fórmula: h = 2 * A / base
  double altura = 2 *
      area /
      max(lado1, max(lado2, lado3)); // Tomar la longitud máxima como base

  //Calculamos el perimetro

  double perimetro = lado1 + lado2 + lado3;

  //instanciamos los valores y los devolvemos en el constructor

  //En otras palabra:
//creamos una instancia de BaseAltura y devuelve esta instancia con los valores calculados pasados como argumentos al constructor.
  return BaseAltura(maximo, altura, area, perimetro);
}

Rectangulo rectangulo(double logitud, double ancho) {
  var area;
  var Perimetro;
  area = logitud * ancho;

  Perimetro = logitud + logitud + ancho + ancho;
  return Rectangulo(area, Perimetro);
}

Circulo calcularCirculo(double radio) {
  // Calcular el área del círculo
  double area = pi * pow(radio, 2);

  // Calcular el perímetro (circunferencia) del círculo
  double perimetro = 2 * pi * radio;

  // Instanciar los valores y devolverlos en el constructor
  return Circulo(radio, area, perimetro);
}
