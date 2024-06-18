/* 1.24.	Desarrolle los ejercicios del 2.12 al 2.21 utilizando arreglos*/

// Codigo 1.24 //


import 'dart:io';
import 'dart:math';

void main() {
  bool continuar = true;

  while (continuar) {
    print("\nElija el ejercicio que desea ejecutar:");
    print("1. Muestre dos números aleatorios del 1 al 6.");
    print("2. Solicite por teclado el nombre de un artículo y su valor, y calcule el total.");
    print("3. Muestre la tabla de multiplicar del número indicado por el usuario.");
    print("4. Muestre todas las tablas de multiplicar del 1 al 10.");
    print("5. Solicite la cantidad de números de la serie de Fibonacci a ver.");
    print("6. Encuentre el factorial de un número del 0 al 12.");
    print("7. Solicite tres números y organícelos de forma ascendente o descendente.");
    print("8. Muestre 6 números aleatorios del 1 al 45 organizados de menor a mayor.");
    print("9. Descomponga un número y muestre la cantidad de dígitos.");
    print("10. Solicite 2 números y muestre la serie par o impar según la elección.");
    print("11. Salir.");

    stdout.write("\nIngrese el número del ejercicio o '11' para salir: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case "1":
        mostrarDados();
        break;
      case "2":
        calcularTotalArticulo();
        break;
      case "3":
        mostrarTablaMultiplicar();
        break;
      case "4":
        mostrarTodasTablas();
        break;
      case "5":
        mostrarSerieFibonacci();
        break;
      case "6":
        encontrarFactorial();
        break;
      case "7":
        organizarNumeros();
        break;
      case "8":
        mostrarNumerosBaloto();
        break;
      case "9":
        descomponerNumero();
        break;
      case "10":
        mostrarSerieParImpar();
        break;
      case "11":
        print("Saliendo del programa. ¡Hasta luego!");
        continuar = false;
        break;
      default:
        print("Opción no válida. Por favor, ingrese un número del 1 al 11.");
        break;
    }
  }
}


// ----------------------------------------------------------------------------------------------- //

void mostrarDados() {
  List<int> resultados = [];
  int lanzamientos = 0;

  while (lanzamientos < 3) {
    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;
    resultados = [dado1, dado2];

    print("Lanzamiento ${lanzamientos + 1}: ${resultados[0]}, ${resultados[1]}");

    if (resultados[0] % 2 == 0 && resultados[1] % 2 == 0) {
      print("¡Saca una ficha!");
      break;
    } else {
      print("Lanza de nuevo!");
    }
    
    lanzamientos++;
  }

  if (lanzamientos == 3) {
    print("¡Tres lanzamientos sin sacar un par!");
  }
}

// ----------------------------------------------------------------------------------------------- //

void calcularTotalArticulo() {

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

// ----------------------------------------------------------------------------------------------- //

void mostrarTablaMultiplicar() {

stdout.write('Ingrese un número para mostrar su tabla de multiplicar: ');
  int numero = int.parse(stdin.readLineSync()!);

  List<int> tablaMultiplicar = [];

  for (int i = 1; i <= 10; i++) {
    int resultado = numero * i;
    tablaMultiplicar.add(resultado);
  }

  print('\nTabla de multiplicar del $numero:');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${tablaMultiplicar[i - 1]}');
  }
}


// ----------------------------------------------------------------------------------------------- //

void mostrarTodasTablas() {
 
  for (int numero = 1; numero <= 10; numero++) {
    
    List<int> tablaMultiplicar = List.generate(10, (index) => (index + 1) * numero);

    print('\nTabla de multiplicar del $numero:');
    for (int i = 1; i <= 10; i++) {
      print('$numero x $i = ${tablaMultiplicar[i - 1]}');
    }
  }
}
// ----------------------------------------------------------------------------------------------- //

void mostrarSerieFibonacci() {

  stdout.write('Ingrese la cantidad de números de la serie Fibonacci que desea ver: ');
  int cantidadNumeros = int.parse(stdin.readLineSync()!);

  if (cantidadNumeros <= 0) {
    print('Por favor, ingrese un número mayor que cero.');
    return;
  }

  List<int> fibonacci = [];


  if (cantidadNumeros >= 1) {
    fibonacci.add(0);
  }
  if (cantidadNumeros >= 2) {
    fibonacci.add(1);
  }

  for (int i = 2; i < cantidadNumeros; i++) {
    int nuevoNumero = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(nuevoNumero);
  }


  print('\nLos primeros $cantidadNumeros números de la serie de Fibonacci son:');
  for (int numero in fibonacci) {
    print(numero);
  }

}


// ----------------------------------------------------------------------------------------------- //

void encontrarFactorial() {
  stdout.write('Ingrese un número del 0 al 12 para calcular su factorial: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0 || numero > 12) {
    print('El número ingresado debe estar en el rango del 0 al 12.');
    return;
  }

  List<int> factoriales = [
    1,   
    1,   
    2,  
    6,   
    24,  
    120, 
    720, 
    5040, 
    40320, 
    362880, 
    3628800, 
    39916800, 
    479001600, 
  ];

 
  print('\nEl factorial de $numero es: ${factoriales[numero]}');
}



// ----------------------------------------------------------------------------------------------- //

void organizarNumeros() {


  stdout.write('Ingrese el primer número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tercer número: ');
  int num3 = int.parse(stdin.readLineSync()!);


  stdout.write('¿Cómo desea ordenar los números? (ascendente / descendente): ');
  String decision = stdin.readLineSync()!.toLowerCase();

  List<int> numeros = [num1, num2, num3];

  if (decision == 'ascendente') {
    numeros.sort();
  } else if (decision == 'descendente') {
    numeros.sort((a, b) => b.compareTo(a));
  } else {
    print('Opción no válida. Debe ingresar "ascendente" o "descendente".');
    return;
  }

  
  print('\nNúmeros ordenados en $decision:');
  for (int numero in numeros) {
    print(numero);
  }
}

// ----------------------------------------------------------------------------------------------- //

void mostrarNumerosBaloto() {

  
  print('Presione enter para generar 6 números aleatorios del 1 al 45 para el Baloto.');
  String accion = stdin.readLineSync()!;


  if (accion.isEmpty) {

    List<int> numeros = generarNumerosBaloto();

    print('\nNúmeros para el Baloto (ordenados):');
    print(numeros.join(' '));
  } else {
    print('Acción no reconocida. Presione enter para generar los números del Baloto.');
  }
}

List<int> generarNumerosBaloto() {
  Random random = Random();
  Set<int> numerosSet = Set<int>();

  while (numerosSet.length < 6) {
    int numeroAleatorio = random.nextInt(45) + 1;
    numerosSet.add(numeroAleatorio);
  }

  List<int> numerosOrdenados = numerosSet.toList()..sort();

  return numerosOrdenados;
}


// ----------------------------------------------------------------------------------------------- //

void descomponerNumero(){

  stdout.write('Ingrese un número entero positivo: ');
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print('El número debe ser positivo.');
    return;
  }


  String numeroStr = numero.toString();

 
  int cantidadDigitos = numeroStr.length;


  print('El número $numero tiene $cantidadDigitos dígitos.');
}




// ----------------------------------------------------------------------------------------------- //

void mostrarSerieParImpar() {
  stdout.write('Ingrese el primer número: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el segundo número: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  stdout.write('¿Qué serie desea ver? (par / impar): ');
  String opcion = stdin.readLineSync()!.toLowerCase();

  if (opcion != 'par' && opcion != 'impar') {
    print('Opción no válida. Debe ingresar "par" o "impar".');
    return;
  }

  List<int> serie = [];

  if (opcion == 'par') {
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 == 0) {
        serie.add(i);
      }
    }
  } else { 
    for (int i = menor; i <= mayor; i++) {
      if (i % 2 != 0) {
        serie.add(i);
      }
    }
  }


  print('\nSerie de números $opcion desde $menor hasta $mayor:');
  if (serie.isEmpty) {
    print('No hay números $opcion en el rango especificado.');
  } else {
    print(serie);
  }
}
