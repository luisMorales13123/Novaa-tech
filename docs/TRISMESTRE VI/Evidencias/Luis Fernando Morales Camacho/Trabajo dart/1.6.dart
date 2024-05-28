import 'dart:io';

void main() {
  var numero1;
  var numero2;
  var resultado;

  do {
      stdout.write('Digite el primero numero: \t');
  numero1 = stdin.readLineSync();
  stdout.write('Digite el segundo numero: \t');
  numero2 = stdin.readLineSync();
      var numeroinput = [int.tryParse(numero1), int.tryParse(numero2)];
      if ( numeroinput[1] == 0) {
       print('el divisor no puede ser 0 Vuelva a intentarlo' );


  } else {
      resultado = int.parse(numero1) / int.parse(numero2);
  }

  } while (int.parse(numero2) == 0);

      print(resultado);
}
