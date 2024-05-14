import 'dart:io';

void main() {
  print("\n" + ("-" * 50) + "\n");

  //Cramos variables sin inicializar
  var nombre;
  var sexo;
  var edad;
  var salario;
  var transporte;
//preguntamos y asiganmos valor en la variable
  stdout.write('Digite su nombre: \t');
  nombre = stdin.readLineSync();

  do {
    //preguntamos y asiganmos valor en la variable
    stdout.write('Digite su sexo (1 para Masculino, 2 para Femenino): \t');
    var inputSexo = stdin.readLineSync()!;

    sexo = int.parse(inputSexo);
    //tenemos un control para que el usuario solo pueda poner SEXO:M O F
    if (sexo == 1) {
      sexo = "Masculino";
    } else if (sexo == 2) {
      sexo = "Femenino";
      
    } else {
      //En caso de que digite otro se le mostrara que solo hay dos opciones
      print(
          'Por favor digite un numero valido 1 para Masculino o 2 para Femenino');
    }
    //Atraves de la validacion que ponga  la condicion while dice que si es distinto repita el ciclo
  } while (sexo != "Masculino" && sexo != "Femenino");
  //preguntamos y asiganmos valor en la variable
  stdout.write('Digite su edad: \t');
  edad = stdin.readLineSync();

  stdout.write('Digite su salario: \t');
  salario = stdin.readLineSync();

  do {
    stdout.write('Digite si cuenta con vehiculo  (1. Si, 2. No): \t');
    var inputtransporte = stdin.readLineSync()!;

    transporte = int.parse(inputtransporte);

    if (transporte == 1) {
      transporte = "Si";
    } else if (transporte == 2) {
       transporte = "No";
    } else {
            print(
          'Por favor digite un numero valido 1 Si o 2 No');
    }
      //Atraves de la validacion que ponga  la condicion while dice que si es distinto repita el ciclo
  } while (transporte != "Si" && transporte !="No");


//Imprimos el mensaje y concatenamos la variables
  print('Su nombre es $nombre usted tiene $edad años  su  género es $sexo '
  +'Usted gana $salario y usted $transporte cuenta con vehiculo' );
}
