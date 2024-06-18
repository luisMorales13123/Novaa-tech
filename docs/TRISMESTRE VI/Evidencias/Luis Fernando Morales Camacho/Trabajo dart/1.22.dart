import 'dart:io';

void main() {
  List<int> vector = List.filled(10, 0); 
  
  for (int i = 0; i < vector.length; i++) {
    stdout.write('Ingrese el valor para la posición $i: ');
    vector[i] = int.parse(stdin.readLineSync()!);
  }
  
  print('Índice\tPosición\tValor');
  for (int i = 0; i < vector.length; i++) {
    print('$i\t${i + 1}\t\t${vector[i]}');
  }
}
