import 'dart:io';

void main() {
  List<int> numeroo = [];

  int intentos = 3;
  for (var i = 0; i < intentos; i++) {
    var numeroinput;
    var valor;
    stdout.write('Digite el nombre del articulo : \t');
    numeroinput = stdin.readLineSync()!;
    valor = int.parse(numeroinput);
    numeroo.add(valor);
  }
  int opcion = 0;
  stdout.write('Dessea 1.asendente o 2.deseendente : \t');
  opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    numeroo.sort(
      (a, b) => b.compareTo(a),
    );
  } else {
    numeroo.sort(
      (a, b) => a.compareTo(b),
    );
  }

  print(numeroo);
}
