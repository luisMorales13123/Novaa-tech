import 'dart:io';

void main() {
  // Rutas de los archivos
  String productosPath = 'productos.txt';
  String facturaPath = 'factura.txt';

  // Crear los archivos si no existen
  File productosFile = File(productosPath);
  File facturaFile = File(facturaPath);

  // Inicializar productos desde el archivo (o utilizar datos predefinidos)
  List<List<dynamic>> productos = _leerProductos(productosFile);
  if (productos.isEmpty) {
    productos = [
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
    _escribirProductos(productosFile, productos);
  }

  // Definición de la matriz (factura), inicialmente vacía
  List<List<dynamic>> factura = _leerFactura(facturaFile);

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
    List<dynamic>? productoElegido = productos.firstWhere((element) => element[0] == idProducto, orElse: () => null!);

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

    // Agregar el ítem a la factura
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

  // Guardar la factura en el archivo
  _escribirFactura(facturaFile, factura);
}

// Función para leer productos desde un archivo
List<List<dynamic>> _leerProductos(File file) {
  List<List<dynamic>> productos = [];

  try {
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<dynamic> producto = line.split(',').map((e) => _parseValue(e)).toList();
      productos.add(producto);
    }
  } catch (e) {
    print('Error al leer el archivo de productos: $e');
  }

  return productos;
}

// Función para escribir productos en un archivo
void _escribirProductos(File file, List<List<dynamic>> productos) {
  try {
    String contents = productos.map((producto) => producto.join(',')).join('\n');
    file.writeAsStringSync(contents);
  } catch (e) {
    print('Error al escribir en el archivo de productos: $e');
  }
}

// Función para leer la factura desde un archivo
List<List<dynamic>> _leerFactura(File file) {
  List<List<dynamic>> factura = [];

  try {
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<dynamic> item = line.split(',').map((e) => _parseValue(e)).toList();
      factura.add(item);
    }
  } catch (e) {
    print('Error al leer el archivo de la factura: $e');
  }

  return factura;
}

// Función para escribir la factura en un archivo
void _escribirFactura(File file, List<List<dynamic>> factura) {
  try {
    String contents = factura.map((item) => item.join(',')).join('\n');
    file.writeAsStringSync(contents);
  } catch (e) {
    print('Error al escribir en el archivo de la factura: $e');
  }
}

// Función auxiliar para convertir valores a su tipo correspondiente
dynamic _parseValue(String value) {
  if (value == 'true') {
    return true;
  } else if (value == 'false') {
    return false;
  } else if (double.tryParse(value) != null) {
    return double.parse(value);
  } else {
    return value;
  }
}
