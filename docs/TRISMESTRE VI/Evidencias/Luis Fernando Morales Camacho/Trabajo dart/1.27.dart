import 'dart:io';

void main() {
  // Definición de la primera matriz de productos
  List<List<dynamic>> productos = [
    [1, 'Producto A', 100.0, true],
    [2, 'Producto B', 50.0, false],
    [3, 'Producto C', 80.0, true],
    [4, 'Producto D', 120.0, false],
    [5, 'Producto E', 90.0, true],
    [6, 'Producto F', 60.0, false],
    [7, 'Producto G', 110.0, true],
    [8, 'Producto H', 70.0, false],
    [9, 'Producto I', 130.0, true],
    [10, 'Producto J', 85.0, false],
  ];

  // Definición de la segunda matriz (factura), inicialmente vacía
  List<List<dynamic>> factura = [];

  // Variable para llevar el total de la factura
  double totalFactura = 0.0;

  // Solicitar productos hasta un máximo de 10
  for (int i = 0; i < 10; i++) {
    stdout.write('Ingrese el ID del producto que desea llevar (o 0 para terminar): ');
    int idProducto = int.parse(stdin.readLineSync()!);

    // Si el usuario ingresa 0, terminar de solicitar productos
    if (idProducto == 0) {
      break;
    }

    // Buscar el producto en la lista de productos
    List<dynamic>? productoElegido = productos.firstWhere((element) => element[0] == idProducto, orElse: () => 
    null!);

    if (productoElegido == null) {
      print('Producto con ID $idProducto no encontrado. Intente nuevamente.');
      continue;
    }

    // Solicitar la cantidad de unidades del producto
    stdout.write('Ingrese la cantidad de unidades que desea llevar del ${productoElegido[1]}: ');
    int cantidad = int.parse(stdin.readLineSync()!);

    // Calcular valor total del ítem
    double precioUnitario = productoElegido[2];
    bool tieneIVA = productoElegido[3];
    double valorTotal = cantidad * precioUnitario;

    // Calcular IVA si aplica
    double iva = tieneIVA ? valorTotal * 0.12 : 0.0;
    double valorTotalConIVA = valorTotal + iva;

 
    factura.add([
      factura.length + 1, // ítem
      productoElegido[0], // ID
      productoElegido[1], // nombre
      cantidad,           // cantidad
      precioUnitario,     // valor unitario
      iva,                // IVA
      valorTotalConIVA    // valor total
    ]);

    // Sumar al total de la factura
    totalFactura += valorTotalConIVA;

    // Confirmación de agregado del ítem
    print('Producto agregado a la factura.');

    // Preguntar si desea llevar otro producto
    stdout.write('¿Desea llevar otro producto? (s/n): ');
    String continuar = stdin.readLineSync()!.toLowerCase();
    if (continuar != 's') {
      break;
    }
  }

  // Imprimir la factura
  print('\n*** Factura ***');
  print('Ítem\tID\tNombre\tCantidad\tValor Unitario\tIVA\tValor Total');
  for (var item in factura) {
    print('${item[0]}\t${item[1]}\t${item[2]}\t${item[3]}\t\t${item[4]}\t\t${item[5]}\t${item[6]}');
  }
  print('Total factura: \$${totalFactura.toStringAsFixed(2)}');
}
