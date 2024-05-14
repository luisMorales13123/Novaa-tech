import 'dart:io';
import 'dart:math';

void main() {
  var operacion;
  var num1;
  var num2;
  var resultado;
  stdout.write(

    //tenemos un menu de acuerdo a la seleccion del usuario este menu redirigira a una operacion
      'Digite la operacion que deseea: \t  \n 1.suma \n 2.resta \n 3.multiplicacion' +
          '\n 4.divicion \n 5.modulo \n 6.cuadrado \n 7.raiz cuadrada  \n 8.potencia \n 9.porcentaje \n 10.numero aleatorio: \t');
  var inputoperacion = stdin.readLineSync()!;

  operacion = int.parse(inputoperacion);
//tenemos una condiciojn la cual dice que si es 7 o 8  solo pregunte por el primero numero
// si no que pregunte por los dos
  if (operacion == 7 || operacion == 8) {
    stdout.write('Digite el primer numero:  \t');
    num1 = stdin.readLineSync()!;
  } else {
    stdout.write('Digite el primer numero:  \t');
    num1 = stdin.readLineSync()!;
    stdout.write('Digite el segundo numero :  \t');
    num2 = stdin.readLineSync()!;
  }

  switch (operacion) {
    case 1://suma
      var resultado = int.parse(num1) + int.parse(num2);
      print('la suma es:  $resultado');
      break;
    case 2://resta
      var resultado = int.parse(num1) - int.parse(num2);
      print('la resta  es:  $resultado');
      break;
    case 3://multiplicacion
      var resultado = int.parse(num1) * int.parse(num2);
      print('la multiplicacion  es:  $resultado');
      break;
    case 4:
    //division
      do {
        var numeroinput = [int.tryParse(num1), int.tryParse(num2)];
        if (numeroinput[1] == 0) {
          print('el divisor no puede ser 0 Vuelva a intentarlo');
        } else {
          resultado = int.parse(num1) / int.parse(num2);
        }
      } while (int.parse(num2) == 0);

      print('la division de $num1 y $num2 da como resultado:  $resultado');
      break;
    case 5:
    //modulo
      do {
        var numeroinput = [int.tryParse(num1), int.tryParse(num2)];
        if (numeroinput[1] == 0) {
          print('el divisor no puede ser 0 Vuelva a intentarlo');
        } else {
          resultado = int.parse(num1) % int.parse(num2);
        }
      } while (int.parse(num2) == 0);

      print('el modulo es $resultado');
      break;
    case 6:
    //cuadrado
      var resultado = 1;
      for (int i = 0; i < int.parse(num2); i++) {
        resultado *= int.parse(num1);
      }
      print('El cuadrado es $resultado');

      break;
    case 7://raiz cuadrada
      do {} while (int.parse(num1) == 0);

      var operacion;
      operacion = sqrt(double.parse(num1));
      print('la raiz cuadrada de $num1 es: $operacion');
      break;

      //potencia
    case 8:
      resultado = int.parse(num1) * int.parse(num1);
      print(resultado);

      break;
    case 9:
//porcetanje

      break;
    case 10:
      var random = Random();

      int randomNumber = random.nextInt(100);
      print('Número aleatorio entre 0 y 99: $randomNumber');
      break;
  }
}
