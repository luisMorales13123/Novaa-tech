import 'dart:io';

void main() {
  stdout.write('Digite la cantidad de productos : \t');
  int cantidadProducto = int.parse(stdin.readLineSync()!);

  List<Producto> producto = [];

  for (int i = 0; i < cantidadProducto; i++) {
    stdout.write('Digite el nombre del articulo : \t');
    String NombreArticulo = stdin.readLineSync()!;
    stdout.write('Digite el precio del articulo : \t');
    double precio = double.parse(stdin.readLineSync()!);
    stdout.write('Digite la  cantidad del articulo : \t');
    double cantidad = double.parse(stdin.readLineSync()!);
    stdout.write('el producto es de la canasta Familiar  1.SI/2.NO : \t');
    int cantidadinput = int.parse(stdin.readLineSync()!);
    bool canasta;
    if (cantidadinput == 1) {
      canasta = true;
    } else {
      canasta = false;
    }
    producto.add(Producto(NombreArticulo, precio, cantidad, canasta));
  }

  double sumaPrecios = 0;
  for (var producto in producto) {
    if (producto.canasta) {
      sumaPrecios += producto.precio * producto.cantidad;
    } else {
      // Si el producto no es de la canasta familiar, se suma el IVA del 19%
      sumaPrecios += (producto.precio * producto.cantidad) * 1.19;
    }
  }

    print('Productos y sus precios:');
  for (var producto in producto) {
    print(
        'Producto: ${producto.NombreArticulo}, Precio: \$${producto.precio.toStringAsFixed(2)}, Cantidad: ${producto.cantidad}, canasta: ${producto.canasta}');
  }
  // Imprime la suma de todos los precios
  print('La suma de todos los precios es: \$${sumaPrecios.toStringAsFixed(2)}');
}

class Producto {
  final String NombreArticulo;
  final double precio;
  final double cantidad;
  final bool canasta;

  Producto(this.NombreArticulo, this.precio, this.cantidad, this.canasta);
}