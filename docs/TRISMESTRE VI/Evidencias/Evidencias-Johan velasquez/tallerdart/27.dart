/**
 * 1.27.	Con 2 matrices, la primera de 4 por 10 con 10 productos con el ID, nombre de producto, precio unidad,
 *  y si tiene o no IVA, la segunda se debe llenar dinámicamente, debe ser de 11 por 7 con el ítem, ID, 
 * nombre producto, cantidad valor unidad, IVA, valor total. Se creará una factura el programa solicitará en 
 * consola que digite el id del producto que desea llevar, luego l
 * a cantidad y si desea llevar otro producto, puede llevar hasta 10 productos el usuario, luego imprimirá la 
 * factura
 */import 'dart:io';

void main() {
  // Variable para validar que no se puedan escoger más de 10 productos por cliente
  int maxProductos = 10;
  int contadorProductos = 0;

  // Matriz de productos 4x10
  List<List<dynamic>> productos = [
    ['ID', 'Nombre', 'Precio Unidad', 'Tiene IVA'],
    [1, 'Huevos', 100.0, true],
    [2, 'Arroz', 200.0, false],
    [3, 'Alberja', 300.0, true],
    [4, 'Cebolla', 500.0, false],
    [5, 'Zapatos', 100.0, true],
    [6, 'Guitarra', 900.0, true],
    [7, 'Lapices', 100.0, false],
    [8, 'Casa', 1000.0, true],
    [9, 'bmws1000RR', 8000.0, true],
    [10, 'Laptop', 2000.0, true]
  ];

  // Matriz de factura 11x7
  List<List<dynamic>> factura = List.generate(11, (i) => List.filled(7, null));

  // Encabezados de la factura
  factura[0] = ['Item', 'ID', 'Nombre Producto', 'Cantidad', 'Valor Unidad', 'IVA', 'Valor Total producto'];

  print("¡Bienvenid@, vamos a comprar!");

  // Imprimir la matriz de productos
  print("\nLista de productos disponibles:");
  for (var producto in productos) {
    print(producto);
  }
  print("\n" + ("-" * 50) + "\n");

  while (contadorProductos < maxProductos) {
    print("Ingresa el ID del producto:");
    int id = int.parse(stdin.readLineSync()!);

    // Verificar que el ID del producto sea válido
    if (id < 1 || id > 10) {
      print("ID de producto no válido. Inténtalo de nuevo.");
      continue;
    }

    var producto = productos.firstWhere((prod) => prod[0] == id);

    print("Ingresa la cantidad:");
    int cantidad = int.parse(stdin.readLineSync()!);

    // Calcular el valor total considerando el IVA si aplica
    double precioUnidad = producto[2];
    bool tieneIva = producto[3];
    double valorIva = tieneIva ? precioUnidad * 0.19 : 0;
    double valorTotal = (precioUnidad + valorIva) * cantidad;

    // Agregar la información del producto a la factura
    factura[contadorProductos + 1] = [
      contadorProductos + 1,
      producto[0],
      producto[1],
      cantidad,
      precioUnidad,
      valorIva,
      valorTotal
    ];

    contadorProductos++;

    if (contadorProductos >= maxProductos) break;

    print("¿Desea llevar otro producto? (s/n)");
    String respuesta = stdin.readLineSync()!;
    if (respuesta.toLowerCase() != 's') break;
  }

  // Calcular el total a pagar
  double totalPagar = 0.0;
  for (var i = 1; i <= contadorProductos; i++) {
    totalPagar += factura[i][6];
  }

  // Imprimir la factura
  print("\nAquí tienes tu factura:");
  print("\n" + ("-" * 50) + "\n");
  for (var fila in factura) {
    if (fila[0] != null) {
      print(fila);
    }
  }

  // Imprimir el total a pagar
  print("\nTotal a pagar factura: \$${totalPagar.toStringAsFixed(2)}");
}
