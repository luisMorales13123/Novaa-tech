/* 1.27.	Con 2 matrices, la primera de 4 por 10 con 10 productos con el ID, nombre de producto,
precio unidad, y si tiene o no IVA, la segunda se debe llenar dinámicamente,
debe ser de 11 por 7 con el ítem, ID, nombre producto, cantidad valor unidad, IVA, valor total.
Se creará una factura el programa solicitará en consola que digite el id del producto que desea llevar,
luego la cantidad y si desea llevar otro producto, 
puede llevar hasta 10 productos el usuario, luego imprimirá la factura*/

// Codigo 1.27 //

import 'dart:io';

void main() {
  List<Producto> inventario = [
    Producto(1, 'Arroz', 3500, false),          
    Producto(2, 'Carne de res', 15000, false),  
    Producto(3, 'Pollo', 12000, false),         
    Producto(4, 'Leche', 4500, true),           // IVA
    Producto(5, 'Pan', 1000, true),             // IVA
    Producto(6, 'Cerveza', 3500, true),         // IVA
    Producto(7, 'Gaseosa', 2500, true),         // IVA
    Producto(8, 'Chocolate', 2000, true),       // IVA
    Producto(9, 'Jabón de baño', 3500, true),   // IVA
    Producto(10, 'Medicamentos', 15000, false), 
  ];

  List<List<dynamic>> factura = [];

  stdout.write('Ingrese el ID del producto que desea llevar (0 para terminar): ');
  int idProducto = int.parse(stdin.readLineSync()!);

  while (idProducto != 0 && factura.length < 10) {
    Producto? productoSeleccionado = inventario.firstWhere((p) => p.id == idProducto, orElse: () => Producto(-1, 'Producto no encontrado', 0, false));

    if (productoSeleccionado.id != -1) {
      stdout.write('Ingrese la cantidad que desea llevar: ');
      int cantidad = int.parse(stdin.readLineSync()!);

      double valorTotal = cantidad * productoSeleccionado.precio;
      double iva = productoSeleccionado.tieneIVA ? valorTotal * 0.19 : 0;
      double totalConIVA = valorTotal + iva;

      factura.add([
        factura.length + 1,
        productoSeleccionado.id,
        productoSeleccionado.nombre,
        cantidad,
        productoSeleccionado.precio,
        iva,
        totalConIVA,
      ]);

      if (factura.length < 10) {
        stdout.write('Ingrese el ID del siguiente producto (0 para terminar): ');
        idProducto = int.parse(stdin.readLineSync()!);
      } else {
        idProducto = 0;
      }
    } else {
      stdout.write('Producto no encontrado. Ingrese un ID válido (0 para terminar): ');
      idProducto = int.parse(stdin.readLineSync()!);
    }
  }

  print('\nFACTURA\n---------------------------------------------------------------------');
  print('Ítem   ID    Nombre           Cantidad      Precio     IVA       Total con IVA');
  print('---------------------------------------------------------------------');
  for (var item in factura) {
    print('${item[0].toString().padRight(6)} ${item[1].toString().padRight(5)} ${item[2].toString().padRight(20)} ${item[3].toString().padRight(9)} ${item[4].toStringAsFixed(2).padRight(9)} ${item[5].toStringAsFixed(2).padRight(9)} ${item[6].toStringAsFixed(2)}');
  }
  print('---------------------------------------------------------------------');
}

class Producto {
  int id;
  String nombre;
  double precio;
  bool tieneIVA;

  Producto(this.id, this.nombre, this.precio, this.tieneIVA);
}
