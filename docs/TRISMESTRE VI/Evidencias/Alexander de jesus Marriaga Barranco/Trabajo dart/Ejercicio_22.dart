/* 1.22.	Llene un vector de 10 posiciones con un ciclo para, 
luego imprima con otro ciclo el vector mostrando el índice, la posición y el valor*/

// Codigo 1.22 //

void main() {
  List<int> vector = List.filled(10, 0); 


  for (int i = 0; i < vector.length; i++) {
    vector[i] = i + 1;
  }

  print("Índice\tPosición\tValor");
  for (int i = 0; i < vector.length; i++) {
    print("$i\t${i + 1}\t\t${vector[i]}");
  }
}

