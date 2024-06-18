import 'dart:math';
import 'dart:io';

void main() {


 

 


 


  var opcion;
      stdout.write('elija el aejercisio: \t');
  opcion = stdin.readLineSync();
  var opcioninput = int.parse(opcion);


  switch (opcioninput) {
    case 1:
        ejercicioUnoDoce();
      break;
         case 2:
      ejercicioUnoTrece();
      break;
         case 3:
       
  ejercicioUnoCatorce();
      break;
               case 4:
       
 ejercicioUnoQuince();
      break;
               case 5:
       
  ejercicioUnoDieciseis();
      break;
               case 6:
       
 ejercicioUnoDiecisiete();
      break;
               case 7:
       
  ejercicioUnoDieciocho();
      break;
               case 8:
       
  ejercicioUnoDiecinueve();
      break;
                     case 9:
       
 ejercicioUnoVeinte();;
      break;
                     case 10:
       
  ejercicioUnoVeintiuno();
      break;
    default:
  }
}

void ejercicioUnoDoce() {
  int intentos = 0;
  Random random = Random();

  do {
    int dado1 = random.nextInt(6) + 1;
    int dado2 = random.nextInt(6) + 1;

    print('Dado 1: $dado1');
    print('Dado 2: $dado2');

    if (dado1 % 2 == 0 && dado2 % 2 == 0) {
      intentos++;
      if (intentos == 2) {
        print('¡Saca una ficha!');
        break;
      } else {
        print('¡Lanzar de nuevo!');
      }
    } else {
      print('¡Lanzar de nuevo!');
      intentos = 0;
    }
  } while (true);
}

void ejercicioUnoTrece() {
  stdout.write('Ingrese el nombre del artículo: ');
  String nombre = stdin.readLineSync()!;
  stdout.write('Ingrese el valor de unidad: ');
  double valorUnidad = double.parse(stdin.readLineSync()!);
  stdout.write('Ingrese la cantidad a llevar: ');
  int cantidad = int.parse(stdin.readLineSync()!);
  stdout.write('¿Es de la canasta familiar? (si/no): ');
  String esCanastaFamiliar = stdin.readLineSync()!;

  double total = valorUnidad * cantidad;
  if (esCanastaFamiliar.toLowerCase() == 'no') {
    total *= 1.19; // Se suma el IVA del 19%
  }

  print('Total a pagar por $cantidad $nombre: \$${total.toStringAsFixed(2)}');
}

void ejercicioUnoCatorce() {
  stdout.write('Ingrese un número para ver su tabla de multiplicar: ');
  int numero = int.parse(stdin.readLineSync()!);

  print('Tabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}

void ejercicioUnoQuince() {
  for (int i = 1; i <= 10; i++) {
    print('\nTabla de multiplicar del $i:');
    for (int j = 1; j <= 10; j++) {
      print('$i x $j = ${i * j}');
    }
  }
}

void ejercicioUnoDieciseis() {
  stdout.write(
      'Ingrese la cantidad de números de la serie de Fibonacci que desea ver: ');
  int cantidad = int.parse(stdin.readLineSync()!);

  int a = 0, b = 1;
  print('Serie de Fibonacci:');
  for (int i = 0; i < cantidad; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}

void ejercicioUnoDiecisiete() {
  stdout.write('Ingrese un número para calcular su factorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  int factorial = 1;
  if (numero >= 0 && numero <= 12) {
    for (int i = 1; i <= numero; i++) {
      factorial *= i;
    }
    print('El factorial de $numero es $factorial');
  } else {
    print('El factorial es infinito.');
  }
}

void ejercicioUnoDieciocho() {
  List<int> numeros = [];

  for (int i = 0; i < 3; i++) {
    stdout.write('Ingrese el número ${i + 1}: ');
    numeros.add(int.parse(stdin.readLineSync()!));
  }

  stdout.write(
      '¿Desea organizar los números en orden ascendente o descendente? (ascendente/descendente): ');
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion == 'ascendente') {
    numeros.sort();
  } else if (opcion == 'descendente') {
    numeros.sort((a, b) => b.compareTo(a));
  }

  print('Números ordenados: $numeros');
}

void ejercicioUnoDiecinueve() {
  List<int> numerosAleatorios = [];
  Random random = Random();

  while (numerosAleatorios.length < 6) {
    int numero = random.nextInt(45) + 1;
    if (!numerosAleatorios.contains(numero)) {
      numerosAleatorios.add(numero);
    }
  }

  numerosAleatorios.sort();

  print('Números aleatorios del 1 al 45 (baloto): $numerosAleatorios');
}

void ejercicioUnoVeinte() {
  stdout.write('Ingrese un número: ');
  int numero = int.parse(stdin.readLineSync()!);

  int contador = 0;
  int temp = numero;
  while (temp != 0) {
    temp ~/= 10;
    contador++;
  }

  print('El número $numero tiene $contador dígitos.');
}

void ejercicioUnoVeintiuno() {
  stdout.write('Ingrese el primer número: ');
  int numero1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el segundo número: ');
  int numero2 = int.parse(stdin.readLineSync()!);

  String tipoSerie = solicitarTipoSerie();

  if (tipoSerie.toLowerCase() == 'par') {
    mostrarSeriePar(numero1, numero2);
  } else if (tipoSerie.toLowerCase() == 'impar') {
    mostrarSerieImpar(numero1, numero2);
  } else {
    print('Opción no válida. Por favor ingrese "par" o "impar".');
  }
}

String solicitarTipoSerie() {
  stdout.write('¿Desea la serie par o impar?: ');
  return stdin.readLineSync()!;
}

void mostrarSeriePar(int inicio, int fin) {
  print('Serie par:');
  for (int i = inicio; i <= fin; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void mostrarSerieImpar(int inicio, int fin) {
  print('Serie impar:');
  for (int i = inicio; i <= fin; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
