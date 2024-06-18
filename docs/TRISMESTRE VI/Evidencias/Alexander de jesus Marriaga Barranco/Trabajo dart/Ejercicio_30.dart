/* 1.30.	Desarrolle los ejercicios 2.26 y 2.27 utilizando archivos planos*/

// Codigo 1.30 //

import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('\nMenú:');
    print('1. Jugar Guayabita');
    print('2. Generar Factura');
    print('3. Salir');
    stdout.write('Ingrese la opción deseada: ');

    String opcion = stdin.readLineSync()!;
    switch (opcion) {
      case '1':
        jugarGuayabita();
        break;
      case '2':
        generarFactura();
        break;
      case '3':
        print('Saliendo del programa...');
        return;
      default:
        print('Opción inválida. Inténtelo nuevamente.');
    }
  }
}

void jugarGuayabita() {
  File acumuladoFile = File('acumulado.txt');
  int acumulado = leerAcumulado(acumuladoFile);

  while (acumulado > 0) {
    print("\nAcumulado actual: $acumulado");

    int numJugadores = solicitarCantidadJugadores();

    for (int jugador = 1; jugador <= numJugadores; jugador++) {
      print("\nTurno del jugador $jugador:");

      int primerTiro = generarTiro();
      print("Primer tiro: $primerTiro");

      if (primerTiro == 1 || primerTiro == 6) {
        print("El jugador pierde. Se coloca una moneda en el acumulado.");
        acumulado += 1;
      } else {
        int maxApuesta = acumulado;

        int apuesta = solicitarApuesta(maxApuesta);

        int segundoTiro = generarTiro();
        print("Segundo tiro: $segundoTiro");

        if (segundoTiro > primerTiro) {
          print("¡El jugador gana $apuesta monedas!");
          acumulado -= apuesta;
        } else {
          print("El jugador pierde. Se agrega al acumulado $apuesta monedas.");
          acumulado += apuesta;
        }
      }
    }

    guardarAcumulado(acumuladoFile, acumulado);
  }

  print("\nEl juego ha finalizado.");
}

int leerAcumulado(File file) {
  if (!file.existsSync()) {
    file.writeAsStringSync('1');
  }
  String acumuladoString = file.readAsStringSync();
  return int.parse(acumuladoString);
}

void guardarAcumulado(File file, int acumulado) {
  file.writeAsStringSync(acumulado.toString());
}

int solicitarCantidadJugadores() {
  print("Ingrese la cantidad de jugadores:");
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

int generarTiro() {
  Random random = Random();
  return random.nextInt(12) + 1;
}

int solicitarApuesta(int maximo) {
  print("Ingrese su apuesta (máximo $maximo):");
  String input = stdin.readLineSync()!;
  int apuesta = int.parse(input);

  while (apuesta < 1 || apuesta > maximo) {
    print("La apuesta debe estar entre 1 y $maximo.");
    print("Ingrese su apuesta (máximo $maximo):");
    input = stdin.readLineSync()!;
    apuesta = int.parse(input);
  }

  return apuesta;
}

void generarFactura() {

  List<Producto> inventario = [
    Producto(1, 'Arroz', 3500, false),
    Producto(2, 'Carne de res', 15000, false),
    Producto(3, 'Pollo', 12000, false),
    Producto(4, 'Leche', 4500, true),        // IVA
    Producto(5, 'Pan', 1000, true),          // IVA
    Producto(6, 'Cerveza', 3500, true),      // IVA
    Producto(7, 'Gaseosa', 2500, true),      // IVA
    Producto(8, 'Chocolate', 2000, true),    // IVA
    Producto(9, 'Jabón de baño', 3500, true),// IVA
    Producto(10, 'Medicamentos', 15000, false),
  ];

  File facturaFile = File('factura.txt');

  stdout.write('Ingrese el ID del producto que desea llevar (0 para terminar): ');
  int idProducto = int.parse(stdin.readLineSync()!);

  while (idProducto != 0) {
    Producto? productoSeleccionado = inventario.firstWhere(
      (p) => p.id == idProducto,
      orElse: () => Producto(-1, 'Producto no encontrado', 0, false),
    );

    if (productoSeleccionado.id != -1) {
      stdout.write('Ingrese la cantidad que desea llevar: ');
      int cantidad = int.parse(stdin.readLineSync()!);

      double valorTotal = cantidad * productoSeleccionado.precio;
      double iva = productoSeleccionado.tieneIVA ? valorTotal * 0.19 : 0;
      double totalConIVA = valorTotal + iva;

      facturaFile.writeAsStringSync('${productoSeleccionado.id},${productoSeleccionado.nombre},${cantidad},${productoSeleccionado.precio},${iva},${totalConIVA}\n', mode: FileMode.append);

      stdout.write('Ingrese el ID del siguiente producto (0 para terminar): ');
      idProducto = int.parse(stdin.readLineSync()!);
    } else {
      stdout.write('Producto no encontrado. Ingrese un ID válido (0 para terminar): ');
      idProducto = int.parse(stdin.readLineSync()!);
    }
  }

  mostrarFactura(facturaFile);
}

void mostrarFactura(File facturaFile) {
  print('\nFACTURA\n---------------------------------------------------------------------');
  print('ID      Nombre         Cantidad     Precio      IVA      Total con IVA');
  print('---------------------------------------------------------------------');

  List<String> lines = facturaFile.readAsLinesSync();

  if (lines.isNotEmpty) {
    lines.forEach((line) {
      List<String> datos = line.split(',');
      String id = datos[0].padRight(6);
      String nombre = datos[1].padRight(20);
      String cantidad = datos[2].padRight(9);
      String precio = double.parse(datos[3]).toStringAsFixed(2).padRight(9);
      String iva = double.parse(datos[4]).toStringAsFixed(2).padRight(9);
      String totalConIVA = double.parse(datos[5]).toStringAsFixed(2);

      print('$id ${nombre.substring(0, 20)} $cantidad $precio $iva $totalConIVA');
    });
  } else {
    print('No se encontraron productos en la factura.');
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
