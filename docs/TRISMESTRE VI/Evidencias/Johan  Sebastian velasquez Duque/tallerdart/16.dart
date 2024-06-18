/**
 * 1.16.	Solicite la cantidad de números que se desea ver de la serie de Fibonacci.
 */
import 'dart:io';
void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  int n = 10; // Número de elementos en la serie de Fibonacci
  List<int> fibonacciSeries = [];

  int a = 0, b = 1, i;
  //se solicita el numero hasta el que se mostrara la serie de fibo
  stdout.write('Digita el número que quieres ver de la serie de fibonacci:');
  n = int.parse(stdin.readLineSync()!);
 //agregar los números de la serie a la lista
  for (i = 0; i < n; i++) {
    fibonacciSeries.add(a);
    //a almacena un valor mientras que b almacena otro para luego sumar a con b y que de 
    //el número siguiente de la serie 
    int temp = a;
    a = b;
    b = temp + b;
  }

  print('Serie de Fibonacci de $n elementos:');
  print(fibonacciSeries);
    print("\n" + ("-" * 20) + "\n");
   print("Johan velasquez, ficha: 2693505");
}
