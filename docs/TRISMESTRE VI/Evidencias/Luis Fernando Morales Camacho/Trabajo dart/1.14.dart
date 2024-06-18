
import 'dart:io';

void main() {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('Ingrese un número del 1 al 10:');
  int numero = int.parse(stdin.readLineSync()!);
  print('el resultado es:');
  switch (numero) {
    case 1:
      arr.forEach((element) {
        print(element * 1);
      });
      break;
    case 2:
      arr.forEach((element) {
        print(element * 2);
      });
      break;
    case 3:
      arr.forEach((element) {
        print(element * 3);
      });
      break;
    case 4:
      arr.forEach((element) {
        print(element * 4);
      });
      break;
    case 5:
      arr.forEach((element) {
        print(element * 5);
      });
      break;
    case 6:
      arr.forEach((element) {
        print(element * 6);
      });
      break;
    case 7:
      arr.forEach((element) {
        print(element + 7);
      });
      break;
    case 8:
      arr.forEach((element) {
        print(element + 8);
      });
      break;
    case 9:
      arr.forEach((element) {
        print(element * 9);
      });
      break;
    case 10:
      arr.forEach((element) {
        print(element * 10);
      });
      break;
    default:
      print('El número ingresado no está entre 1 y 10');
  }
}
