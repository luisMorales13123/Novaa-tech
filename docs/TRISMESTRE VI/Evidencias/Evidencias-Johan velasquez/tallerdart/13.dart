/**
 * 1.13.	Solicite por teclado el nombre de un artículo, su valor de unidad, cantidad a llevar,
 *  y si es o no de la canasta familiar, como resultado debe
 *  mostrar el total del valor de los productos a llevar y si no son de la canasta familiar se le suma el IVA 19%.
 */
import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  List<Map<String, dynamic>> productos = [];
  bool continuar = true;
  String nombre;
  double valor;
  String canasta;
  int cantidad;
  String respuesta;

  while (continuar) {
    // Pedir al usuario el nombre del producto
    stdout.write('Digite el nombre del producto: ');
    nombre = stdin.readLineSync()!;

    // Pedir al usuario el valor del producto
    stdout.write('Digite el valor del producto: ');
     valor = double.parse(stdin.readLineSync()!);

    // Pedir al usuario si el producto es de la canasta familiar
    stdout.write('¿El producto es de la canasta familiar? (s/n): ');
     canasta = stdin.readLineSync()!.toLowerCase();

    // Ajustar el valor del producto si no es de la canasta familiar
    if (canasta != 's') {
      valor *= 1.19; // iva del 19%
    }

    // Pedir al usuario la cantidad del producto
    stdout.write('Digite la cantidad del producto: ');
     cantidad = int.parse(stdin.readLineSync()!);

    // Almacenar los valores en la lista
    productos.add({'nombre': nombre, 'valor': valor, 'cantidad': cantidad});

    // Preguntar al usuario si quiere agregar otro producto
    stdout.write('¿Desea agregar otro producto? (s/n): ');
     respuesta = stdin.readLineSync()!.toLowerCase();

    // Continuar o salir del bucle según la respuesta del usuario
    if (respuesta != 's') {
      continuar = false;
    }
  }

  // Calcular y mostrar el total
  double total = 0;
  for (var producto in productos) {
    total += producto['valor'] * producto['cantidad'];
  }

  print('\nResumen de productos:');
  for (var producto in productos) {
    print('Producto: ${producto['nombre']}, Valor: \$${producto['valor']}, Cantidad: ${producto['cantidad']}');
  }
 // ifin 
  print("\n" + ("-" * 20) + "\n");
  print('El total de todos los productos es: \$${total.toStringAsFixed(3)}');
  print("Johan velasquez, ficha: 2693505");
}
