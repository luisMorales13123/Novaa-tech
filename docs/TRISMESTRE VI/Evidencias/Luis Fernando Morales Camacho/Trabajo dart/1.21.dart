import 'dart:io';

void main() {
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
