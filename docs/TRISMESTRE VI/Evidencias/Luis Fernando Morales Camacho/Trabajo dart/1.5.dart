import 'dart:io';

void main() {
  var numero1;
  var numero2;
  var resultado;

  stdout.write('Digite el primero numero: \t');
  numero1 = stdin.readLineSync();
  stdout.write('Digite el segundo numero: \t');
  numero2 = stdin.readLineSync();

  var numeroinput = [int.tryParse(numero1), int.tryParse(numero2)];//creamos un array el cual 
  //almacenara los numeros en una variable la cual se encarga del la entrada de la variable
  if (numeroinput[0] != 0 || numeroinput[1] != 0) {//tenemos una condicion el cual dice que si es distinto a 0 ingrese
    resultado = int.parse(numero1) * int.parse(numero2);//hace la operacion

    print(resultado);
  } else {
    print('Los dos numeros no pueden ser 0 por favor hacer una multiplicacion razonable');//tenemos un control para que no se pueda multiplicacion 0 +0 =0
  }
}
