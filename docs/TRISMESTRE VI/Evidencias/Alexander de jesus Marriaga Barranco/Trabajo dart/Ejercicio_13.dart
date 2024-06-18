/*1.13.	Solicite por teclado el nombre de un artículo, su valor de unidad, 
cantidad a llevar, y si es o no de la canasta familiar, 
como resultado debe mostrar el total del valor de los productos a llevar 
y si no son de la canasta familiar se le suma el IVA 19%.*/

// Codigo 1.13 //

import 'dart:io';

void main() {
  
  List<String> canastaFamiliar = [
    "Arroz",
    "Frijoles",
    "Azúcar",
    "Sal",
    "Aceite",
    "Leche",
    "Huevos",
    "Pan",
    "Carne de res",
    "Pollo",
    "Pescado",
    "Frutas",
    "Verduras",
    "Cereal",
    "Avena",
    "Café"
    
  ];

  stdout.write("Ingrese el nombre del artículo: ");
  String nombreArticulo = stdin.readLineSync()!;
  
  stdout.write("Ingrese el valor unitario del artículo: ");
  double valorUnitario = double.parse(stdin.readLineSync()!);
  
  stdout.write("Ingrese la cantidad a llevar: ");
  int cantidad = int.parse(stdin.readLineSync()!);


  bool esDeCanastaFamiliar = canastaFamiliar.contains(nombreArticulo);

  double total;
  
  if (esDeCanastaFamiliar) {
    total = valorUnitario * cantidad;
  } else {
    double totalSinIVA = valorUnitario * cantidad;
    double iva = totalSinIVA * 0.19;
    total = totalSinIVA + iva;
  }
  
  print("\nTotal a pagar por $cantidad $nombreArticulo: \$${total.toStringAsFixed(2)}");
}
