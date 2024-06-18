import 'dart:math';

void main() {
  Random random = Random();
  

  int min = 0;
  int max = 100;

  List<int> numbers = List.generate(max - min, (index) => min + index);
  

  numbers.shuffle(random);
  

  List<int> selectedNumbers = numbers.take(6).toList();
   selectedNumbers.sort(
      (a, b) => a.compareTo(b),
    );

  print('Los numeros de su balotto son : $selectedNumbers');
}
