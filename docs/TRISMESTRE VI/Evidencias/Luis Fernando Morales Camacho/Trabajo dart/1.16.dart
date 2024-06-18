void main() {
  int n = 10; // Número de términos de la serie de Fibonacci que deseas generar
  List<int> fibonacci = [0, 1]; // Inicializamos la lista con los dos primeros términos

  // Generamos los siguientes términos de la serie
  for (int i = 2; i < n; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }

  // Imprimimos la serie de Fibonacci
  print('Los primeros $n términos de la serie de Fibonacci son:');
  print(fibonacci);
}
