import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Principal());
}

////////////////////////////////////////////
class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SENA | CEET",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 13, 161, 13),
          foregroundColor: Colors.white,
          title: const Text("Información Personal"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      "https://i.ebayimg.com/images/g/lLgAAOSwNB1lu5zn/s-l960.png")),
              ListTile(
                title: Text("Luis Fernando"),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.person),
              ),
              Divider(),
              ListTile(
                title: Text("Morales Camacho"),
                subtitle: Text("Apellido"),
                leading: Icon(Icons.person_add_alt),
              ),
              Divider(),
              ListTile(
                title: Text("3194274397"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone),
              ),
              Divider(),
              ListTile(
                title: Text("DISTRITO CAPITAL"),
                subtitle: Text("Regional"),
                leading: Icon(Icons.location_city),
              ),
              Divider(),
              ListTile(
                title: Text("CEET"),
                subtitle: Text("Centro de Formación"),
                leading: Icon(Icons.location_on),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////

