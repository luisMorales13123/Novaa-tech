import 'dart:convert';  // Importa la biblioteca dart:convert para manejar JSON
import 'package:flutter/material.dart';  // Importa el paquete flutter/material.dart para widgets de Flutter
import 'package:http/http.dart' as http;  // Importa el paquete http y lo renombra como http

void main() {
  runApp(MyApp());  // Inicia la aplicación Flutter llamando a MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login y Listar desde Render',  // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.blue,  // Tema principal de la aplicación, azul en este caso
      ),
      home: LoginPage(),  // Página de inicio de la aplicación
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();  // Crea el estado mutable de LoginPage
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(  // Estructura básica de la pantalla
      appBar: AppBar(
        title: Text('Login'),  // Barra de aplicación con título 'Login'
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),  // Añade un padding a todos los lados del cuerpo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // Centra los elementos verticalmente
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),  // Campo de texto para nombre de usuario
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,  // Campo de texto para contraseña, oculto por seguridad
            ),
            SizedBox(height: 20),  // Espacio vertical de 20 unidades
            ElevatedButton(
              onPressed: () => _login(context),  // Botón elevado para iniciar sesión
              child: Text('Entrar'),  // Texto dentro del botón
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _login(BuildContext context) async {
    Navigator.pushReplacement(  // Reemplaza la pantalla actual con MyHomePage
      context,
      MaterialPageRoute(builder: (context) => MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();  // Crea el estado mutable de MyHomePage
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> _tipoDocumentos = [];  // Lista para almacenar tipos de documentos

  @override
  void initState() {
    super.initState();
    fetchData();  // Carga datos al iniciar la pantalla
  }

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(
          'https://novaa-tech-6.onrender.com/api/TipoDeDocumento/Documento/'));
      if (response.statusCode == 200) {  // Si la solicitud es exitosa
        List<dynamic> jsonResponse = json.decode(response.body);  // Decodifica la respuesta JSON
        setState(() {
          _tipoDocumentos = jsonResponse
              .map((item) => {
                    'id': item['id'],
                    'TipoDocumento': item['TipoDocumento'],
                  })
              .toList();  // Actualiza la lista de documentos
        });
      } else {
        throw Exception('Failed to load data');  // Lanza una excepción si falla la solicitud
      }
    } catch (e) {
      print('Error: $e');  // Muestra error en la consola
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipos de Documento'),  // Barra de aplicación con título 'Tipos de Documento'
      ),
      body: _tipoDocumentos.isEmpty  // Si no hay documentos
          ? Center(
              child: CircularProgressIndicator(),  // Muestra indicador de carga
            )
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,  // Permite desplazamiento horizontal
              child: Container(
                width: MediaQuery.of(context).size.width,  // Ancho del contenedor igual al ancho de la pantalla
                child: DataTable(
                  columnSpacing:
                      MediaQuery.of(context).size.width * 0.1,  // Espaciado entre columnas
                  columns: [
                    DataColumn(
                      label: Text(
                        'ID',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Tipo de Documento',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                  rows: _tipoDocumentos
                      .map(
                        (doc) => DataRow(cells: [
                          DataCell(Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black12),
                              ),
                            ),
                            child: Text(doc['id'].toString()),  // Muestra el ID del documento
                          )),
                          DataCell(Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black12),
                              ),
                            ),
                            child: Text(doc['TipoDocumento']),  // Muestra el tipo de documento
                          )),
                        ]),
                      )
                      .toList(),
                ),
              ),
            ),
    );
  }
}
