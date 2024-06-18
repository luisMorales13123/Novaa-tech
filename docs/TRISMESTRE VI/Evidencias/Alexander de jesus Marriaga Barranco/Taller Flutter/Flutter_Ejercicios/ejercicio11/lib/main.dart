import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(Principal());
}

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: HomePrincipal(),
    );
  }
}

class HomePrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Barra Navegación"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            buildCard(context, "Noticias",
                "https://jsonplaceholder.typicode.com/posts"),
            buildCard(context, "Comentarios",
                "https://jsonplaceholder.typicode.com/comments"),
            buildCard(context, "Álbumes",
                "https://jsonplaceholder.typicode.com/photos?albumId=1"),
            buildCard(context, "Imágenes",
                "https://picsum.photos/v2/list?page=10&limit=10"),
          ],
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String title, String? apiUrl) {
    Widget leadingIcon;
    String subtitleText;

    switch (title) {
      case "Noticias":
        leadingIcon = Icon(Icons.newspaper);
        subtitleText = "Ver noticias";
        break;
      case "Comentarios":
        leadingIcon = Icon(Icons.comment);
        subtitleText = "Ver comentarios";
        break;
      case "Álbumes":
        leadingIcon = Icon(Icons.album);
        subtitleText = "Ver álbumes";
        break;
      case "Imágenes":
        leadingIcon = Icon(Icons.image);
        subtitleText = "Ver imágenes";
        break;
      default:
        leadingIcon = Icon(Icons.error);
        subtitleText = "Error";
        break;
    }

    return Card(
      child: ListTile(
        leading: leadingIcon,
        title: Text(title),
        subtitle: Text(subtitleText),
        trailing: Icon(Icons.arrow_circle_right_outlined),
        onTap: () {
          if (title == "Imágenes") {
            // Mostrar imágenes desde la API de Lorem Picsum
            consultarNoticias(apiUrl!).then((resp) {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(title),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black54,
                    ),
                    body: ListView.builder(
                      itemCount: resp.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            title: Image.network(
                              resp[index]['download_url'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }).catchError((error) {
              // Handle error
              print("Error: $error");
              // Puedes mostrar un mensaje de error aquí si es necesario
            });
          } else {
            // Llamar a la función para consultar la API correspondiente
            consultarNoticias(apiUrl!).then((resp) {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(title),
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black54,
                    ),
                    body: ListView.builder(
                      itemCount: resp.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: ListTile(
                            title: Text(resp[index]['title'] ?? 'No title'),
                            subtitle: Text(resp[index]['body'] ?? 'No body'),
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            }).catchError((error) {
              // Handle error
              print("Error: $error");
              // Puedes mostrar un mensaje de error aquí si es necesario
            });
          }
        },
      ),
    );
  }

  Future<List<dynamic>> consultarNoticias(String apiUrl) async {
    var url = Uri.parse(apiUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load noticias');
    }
  }
}