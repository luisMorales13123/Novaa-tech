/* 1.15	Muestre en pantalla todas las tablas de multiplicar del 1 al 10.*/

// Codigo 1.15 //

void main() {
  for (int i = 1; i <= 10; i++) {
    print("Tabla de multiplicar del $i:\n");
    for (int j = 1; j <= 10; j++) {
      int producto = i * j;
      print("$i x $j = $producto");
    }
    print("---------------------");
  }
}
