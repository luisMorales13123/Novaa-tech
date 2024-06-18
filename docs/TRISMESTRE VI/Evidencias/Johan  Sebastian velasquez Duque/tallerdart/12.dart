/**
 * 1.12.	Muestre dos números aleatorios del 1 al 6 (como los dados), de sacar dos números pares (1,1 o 2,2 o 3,3 o 4,4 o 5,5 o 6,6) saldrá un mensaje en pantalla que dice lanzar de nuevo, de lazar en dos ocasiones más y de nuevo sean pares, saldrá un mensaje en pantalla
 *  ¡Saca una ficha!, de no sacar pares saldrá en pantalla un mensaje ¡Lanza de nuevo! (como en el juego parques).
 */
import 'dart:io';
import 'dart:math';


void main() {
   // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  String volver;

  do{
  //vector que almacena los dos números a mostrar
  List<int> vector = [0, 0];
  //metodo para generar el número aleatorio usando la libreria de math
  Random random = Random();

  // Generar un número aleatorio entre 1 y 6 para cada posición del vector
  vector[0] = random.nextInt(6) + 1;
  vector[1] = random.nextInt(6) + 1;

  // Mostrar los números aleatorios generados
  print("El primer número aleatorio es: ${vector[0]}");
  print("El segundo número aleatorio es: ${vector[1]}");

  if (vector[0] == vector[1]){
    print("Felicidades, puedes sacar una ficha");

  }else{
    print("ups, no puedes sacar una ficha aún");
  }
  print("");
    stdout.write("Para repetir digite < s >, para salir cualquier tecla: ");
    volver = stdin.readLineSync()!;
  } while (volver == 's');
  print("Johan velasquez, ficha: 2693505");
}