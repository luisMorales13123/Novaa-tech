/* 1.1 Muestre en pantalla su nombre, sexo, edad, salario 
(incluyendo centavos) y si tiene o no vehículo de transporte.*/

// Codigo 1.1 //

void main() {
  String nombre = "Alexander";
  String sexo = "Masculino";
  int edad = 18;
  double salario = 560.000;
  bool Vehiculo = false;
  


  print("\n");
  print("nombre: $nombre");
  print("sexo: $sexo");
  print("edad: $edad");
  print("salario: \$${salario.toStringAsFixed(3)} COP");
  print("¿Cuenta con vehiculo?: ${Vehiculo ? 'si' : 'no'}");
  print("\n");
  
}
