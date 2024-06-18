import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: const Text("Estudiantes SENA CEET"),
      ),
      body: ListView.builder(
        itemCount: estudiantes.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(estudiantes[index]['nombre']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Teléfono: ${estudiantes[index]['telefono']}'),
                  Text('Correo Electrónico: ${estudiantes[index]['correo']}'),
                  Text(
                      'Correo Institucional: ${estudiantes[index]['correoInstitucional']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> estudiantes = [
  {
    'nombre': 'Daniel Felipe Romero Moreno',
    'telefono': '3172539255',
    'correo': 'danielfeliperomeromoreno799@gmail.com',
    'correoInstitucional': 'daniel.romero40@soy.sena.edu.co',
  },
  {
    'nombre': 'Daniel Felipe Navarrete Sanchez',
    'telefono': '3204913394',
    'correo': 'navarreted533@gmail.com',
    'correoInstitucional': 'dfnavarrete36@soy.sena.edu.co',
  },
  {
    'nombre': 'Harold Esteban Gaona Rojas',
    'telefono': '3024600165',
    'correo': 'rojasharold882@gmail.com',
    'correoInstitucional': 'hegaona9@soy.sena.edu.co',
  },
  {
    'nombre': 'Eduardo Antonio Balza Peña',
    'telefono': '3008359557',
    'correo': 'eduardo2.balzaedanreal@gmail.com',
    'correoInstitucional': 'eduardo.balza@soy.sena.edu.co',
  },
  {
    'nombre': 'Esteban David Cardenas Perez',
    'telefono': '315833240',
    'correo': 'estebandc202@gmail.com',
    'correoInstitucional': 'edcardenas56@soy.sena.edu.co',
  },
  {
    'nombre': 'Josue David Maldonado Gomez',
    'telefono': '3105959271',
    'correo': 'dm133752@gmail.com',
    'correoInstitucional': 'josdmaldonado@soy.sena.edu.co',
  },
  {
    'nombre': 'Nicolas Alarcon Fonseca',
    'telefono': '3229118880',
    'correo': 'nicolasf5231@gmail.com',
    'correoInstitucional': 'nalarcon434@soy.sena.edu.co',
  },
  {
    'nombre': 'Luis Fernando Morales Camacho',
    'telefono': '3194274397',
    'correo': 'luis123445666@gmail.com',
    'correoInstitucional': 'lfmorales498@soy.sena.edu.co',
  },
  {
    'nombre': 'Cristian Raul Granados Vasquez',
    'telefono': '3208162801',
    'correo': 'granadosxDapcox@gmail.com',
    'correoInstitucional': 'crgranados19@soy.sena.edu.co',
  },
  {
    'nombre': 'Laura Julieth Suarez Lopez',
    'telefono': '3219152426',
    'correo': 'julip9219@gmail.com',
    'correoInstitucional': 'ljsuarez704@soy.sena.edu.co',
  },
  {
    'nombre': 'Juan David Vargas Sanchez',
    'telefono': '3204562303',
    'correo': 'jd92vs@hotmail.com',
    'correoInstitucional': 'jdvargas1398@soy.sena.edu.co',
  },
  {
    'nombre': 'David Santiago Luengas Cañon',
    'telefono': '3208302716',
    'correo': 'luengasdavid2@gmail.com',
    'correoInstitucional': 'david.luengas@soy.sena.edu.co',
  },
  {
    'nombre': 'Brayam Sneyder Cerquera Rodriguez',
    'telefono': '3103227324',
    'correo': 'brayamscr0614@gmail.com',
    'correoInstitucional': 'brayam.cerquera@soy.sena.edu.co',
  },
  {
    'nombre': 'Cristian David Martinez Galindo',
    'telefono': '3134811158',
    'correo': 'cristianmatinez901gonzalo@gmail.com',
    'correoInstitucional': 'cdmartinez503@soy.sena.edu.co',
  },
  {
    'nombre': 'Nicolas Espitia Chacon',
    'telefono': '3132102102',
    'correo': 'nicolas123espitia@gmail.com',
    'correoInstitucional': 'nespitia68@soy.sena.edu.co',
  },
  {
    'nombre': 'Mariana Galarza Gonzalez',
    'telefono': '3214934673',
    'correo': 'mariana.galarza.gbm@gmail.com',
    'correoInstitucional': 'mariana.galarza@soy.sena.edu.co',
  },
  {
    'nombre': 'Lina Maria Monroy Gama',
    'telefono': '3208191152',
    'correo': 'linagama96@gmail.com',
    'correoInstitucional': 'lmmonroy774@soy.sena.edu.co',
  },
  {
    'nombre': 'Laura Yized Cortes Gomez',
    'telefono': '3209682958',
    'correo': 'corteslaura919@gmail.com',
    'correoInstitucional': 'lauycorts@soy.sena.edu.co',
  },
  {
    'nombre': 'Deivyd Samir Garcia Diaz',
    'telefono': '3187296692',
    'correo': 'samirgarcia102@gmail.com',
    'correoInstitucional': 'dsgarcia949@soy.sena.edu.co',
  },
  {
    'nombre': 'Cristian Daniel Arrieta Ortega',
    'telefono': '3108819591',
    'correo': 'danielarrieta041204@gmail.com',
    'correoInstitucional': 'cdarrieta45@soy.sena.edu.co',
  },
  {
    'nombre': 'Lorena Anjhul Medina Yazo',
    'telefono': '3219989820',
    'correo': 'lorenamedina2005@gmail.com',
    'correoInstitucional': 'Lamedina753@soy.sena.edu.co',
  },
  {
    'nombre': 'Johan Sebastian Velasquez Duque',
    'telefono': '3024539804',
    'correo': 'jsvdfcb@gmail.com',
    'correoInstitucional': 'jsvelasquez585@soy.sena.edu.co',
  },
  {
    'nombre': 'Santiago Andres Torres Meneses',
    'telefono': '3213558125',
    'correo': 'st154d18283@gmail.com',
    'correoInstitucional': 'satorres374@soy.sena.edu.co',
  },
  {
    'nombre': 'Ivan Eduardo Olmos Ramirez',
    'telefono': '3052577073',
    'correo': 'ivanolmos211@gmail.com',
    'correoInstitucional': 'ivan.olmos@soy.sena.edu.co',
  },
  {
    'nombre': 'Alexander de Jesus Marriaga Barranco',
    'telefono': '3044308504',
    'correo': 'alex2005rocco@gmail.com',
    'correoInstitucional': 'admarriaga3@soy.sena.edu.co',
  },
  {
    'nombre': 'Deicy Rivas Cordoba',
    'telefono': '3143436502',
    'correo': 'deicyrivas2020@gmail.com',
    'correoInstitucional': 'deirivas@soy.sena.edu.co',
  },
];
