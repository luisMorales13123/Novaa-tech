//////////////////////////////////////////
import 'package:flutter/material.dart';

//////////////////////////////////////////
void main(List<String> args) {
  runApp(const Principal());
}

//////////////////////////////////////////
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ficha 2693505",
      home: HomePrincipal(),
    );
  }
}

//////////////////////////////////////////
class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: const Text("Aprendizes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(sitiosTuristicos[index]),
                leading: Icon(Icons.star),
              ),
            );
          },
        ),
      ),
    );
  }
}

//////////////////////////////////////////
List<String> sitiosTuristicos = [
  "DANIEL FELIPE ROMERO MORENO",
  "DANIEL FELIPE NAVARRETE SANCHEZ",
  "HAROLD ESTEBAN GAONA ROJAS",
  "EDUARDO ANTONIO BALZA PEÑA",
  "ESTEBAN DAVID CARDENAS PEREZ",
  "JOSUE DAVID MALDONADO GOMEZ",
  "NICOLAS ALARCON FONSECA",
  "LUIS FERNANDO MORALES CAMACHO",
  "CRISTIAN RAUL GRANADOS VASQUEZ",
  "LAURA JULIETH SUAREZ LOPEZ",
  "JUAN DAVID VARGAS SANCHEZ",
  "DAVID SANTIAGO LUENGAS CAÑON",
  "BRAYAM SNEYDER CERQUERA RODRIGUEZ",
  "CRISTIAN DAVID MARTINEZ GALINDO",
  "NICOLAS ESPITIA CHACON",
  "MARIANA GALARZA GONZALEZ",
  "LINA MARIA MONROY GAMA",
  "LAURA YIZED CORTES GOMEZ",
  "DEIVYD SAMIR GARCIA DIAZ",
  "CRISTIAN DANIEL ARRIETA ORTEGA",
  "LORENA ANJHUL MEDINA YAZO",
  "JOHAN SEBASTIAN VELASQUEZ DUQUE",
  "SANTIAGO ANDRES TORRES MENESES",
  "IVAN EDUARDO OLMOS RAMIREZ",
  "ALEXANDER DE JESUS MARRIAGA BARRANCO",
  "DEICY RIVAS CORDOBA"
];
