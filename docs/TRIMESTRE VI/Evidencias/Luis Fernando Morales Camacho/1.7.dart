import 'dart:io';

void main() {

  //creamos varibales
  var color;
  var colorsecundario;
  stdout.write('seleccione el color 1.Rojo 2.Naranja 3.Azul : \t');
  var colorinput = stdin.readLineSync()!;
//almacenamos el capo de entrada en una variable y lo ponemso int
  color = int.parse(colorinput);

//en estos if depediendo el numero que elijan se mostrara un menu con otro colores
  if (color == 1) {
    color = "rojo";

    //dependiendo el color se ara la suma de colores
    stdout.write('seleccione el otro color  1.Rojo 2.Naranja 3.Azul: \t');
    var colorsecundarioinput = stdin.readLineSync()!;
    colorsecundario = int.parse(colorsecundarioinput);

    if (colorsecundario == 1) {
      colorsecundario = "rojo";

      print('la suma de $color + $colorsecundario da como resultado rojo');
    } else if (colorsecundario == 2 ) {
      colorsecundario = "Naranja";
      print('la suma de $color + $colorsecundario da como resultado Naranja oscuro');
    }else{
       colorsecundario = "Azul";
      print('la suma de $color + $colorsecundario da como resultado Violeta');
    }
  }


    if (color == 2) {
    color = "Naranja";
    stdout.write('seleccione el otro color  1.Rojo 2.Naranja 3.Azul: \t');
    var colorsecundarioinput = stdin.readLineSync()!;
    colorsecundario = int.parse(colorsecundarioinput);

    if (colorsecundario == 2) {
      colorsecundario = "Naranja";

      print('la suma de $color + $colorsecundario da como resultado Naranja');
    } else if (colorsecundario == 1) {
      colorsecundario = "rojo";
      print('la suma de $color + $colorsecundario da como resultado Naranja oscuro');
    }else{
       colorsecundario = "Azul";
      print('la suma de $color + $colorsecundario da como resultado Marron');
    }
  }
      if (color == 3) {
    color = "azul";
    stdout.write('seleccione el otro color  1.Rojo 2.Naranja 3.Azul: \t');
    var colorsecundarioinput = stdin.readLineSync()!;
    colorsecundario = int.parse(colorsecundarioinput);

    if (colorsecundario == 3) {
      colorsecundario = "azul";

      print('la suma de $color + $colorsecundario da como resultado azul');
    } else if (colorsecundario == 2) {
      colorsecundario = "Naranja";
      print('la suma de $color + $colorsecundario da como resultado Marron');
    }else{
       colorsecundario = "rojo";
      print('la suma de $color + $colorsecundario da como resultado Violeta');
    }
    //y imprime la respuesta de la suma
  }
}
