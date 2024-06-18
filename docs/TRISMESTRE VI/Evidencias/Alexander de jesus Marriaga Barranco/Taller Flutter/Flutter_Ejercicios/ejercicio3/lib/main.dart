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
        title: Container(
          child: Text(
            'Aprendiz Alexander'
                ' Marriaga',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.yellow,
              decorationThickness: 2.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(

          children: [
            Icon(Icons.star, size: 30.0, color: Colors.black),
            SizedBox(height: 10.0),
            Icon(Icons.crop_square, size: 30.0, color: Colors.black),
            SizedBox(height: 20.0),
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
      ),
    );
  }
}

