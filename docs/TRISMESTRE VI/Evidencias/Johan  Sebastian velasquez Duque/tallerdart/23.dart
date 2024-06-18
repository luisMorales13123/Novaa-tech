/**
 * 1.23.	Llene un vector de dimensión 5 con las palabras nombre, apellido, edad, estado y teléfono;
 *  y llene una matriz de 4 por 5 con los datos de sus compañeros.
 *  Luego de llenar la matriz, la muestre en pantalla de forma organizada.
 */
void main() {
  // Definir las palabras clave para el vector
  List<String> companeros = ['nombre', 'apellido', 'edad', 'estado', 'teléfono'];

  // Definir la matriz para los datos de los compañeros
  List<List<dynamic>> matrizCompaneros = [
    ['Juan', 'Pérez', 25, 'Soltero', '123456789'],
    ['María', 'López', 30, 'Casada', '987654321'],
    ['Carlos', 'García', 28, 'Soltero', '456123789'],
    ['Ana', 'Martínez', 27, 'Casada', '789456123']
  ];

  // Mostrar la matriz en pantalla de forma organizada
  print('Matriz de datos de compañeros:');
  for (int i = 0; i < matrizCompaneros.length; i++) {
    print('Compañero ${i + 1}:');
    for (int j = 0; j < matrizCompaneros[i].length; j++) {
      print('${companeros[j]}: ${matrizCompaneros[i][j]}');
    }
    print(''); // línea en blanco para separar cada compañero
  }
}
