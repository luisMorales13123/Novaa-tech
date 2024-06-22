import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alexander Marriaga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255)
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          Text('Luis Fernando Morales', style: TextStyle(fontSize: 30.0)),
          SizedBox(height: 10.0),
          Icon(Icons.crop_square, size: 20.0, color: Colors.black),
          SizedBox(height: 10.0),
          Icon(Icons.star, size: 20.0, color: Colors.black),
          SizedBox(height: 20.0),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón "Crear"
                },
                child: Text('Crear'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón "Editar"
                },
                child: Text('Editar'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción al presionar el botón "Enviar"
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
