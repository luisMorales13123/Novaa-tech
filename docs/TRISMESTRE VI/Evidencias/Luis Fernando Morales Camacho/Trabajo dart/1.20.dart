import 'dart:io';

void main() {
  stdout.write('Ingrese un número: ');
  int numero = int.parse(stdin.readLineSync()!);
  
  List<int> digitos = descomponerNumero(numero);
  
  print('El número $numero tiene ${digitos.length} dígitos y se descompone en: $digitos');
}

List<int> descomponerNumero(int numero) {
  List<int> digitos = [];
  while (numero != 0) {
    int digito = numero % 10;
    digitos.insert(0, digito);
    numero ~/= 10;
  }
  return digitos;
}
