import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Modelo de Tarea
class Task {
  String id;
  String title;
  bool completed;

  Task({required this.id, required this.title, this.completed = false});
}

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskListScreen(),
    );
  }
}

// Pantalla principal que muestra la lista de tareas
class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    // Simular datos iniciales
    tasks = [
      Task(id: '1', title: 'Comprar leche'),
      Task(id: '2', title: 'Llamar a Juan'),
      Task(id: '3', title: 'Enviar correo electrónico'),
    ];
  }

  // Función para agregar una nueva tarea
  void addTask(String title) {
    setState(() {
      tasks.add(Task(id: DateTime.now().toString(), title: title));
    });
  }

  // Función para actualizar una tarea
  void updateTask(String id, String newTitle) {
    setState(() {
      tasks.firstWhere((task) => task.id == id).title = newTitle;
    });
  }

  // Función para eliminar una tarea
  void deleteTask(String id) {
    setState(() {
      tasks.removeWhere((task) => task.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: tasks.isEmpty
          ? Center(
        child: Text(
          'No hay tareas',
          style: TextStyle(fontSize: 20),
        ),
      )
          : ListView.separated(
        itemCount: tasks.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              tasks[index].title,
              style: TextStyle(
                fontSize: 18,
                decoration: tasks[index].completed
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => deleteTask(tasks[index].id),
            ),
            onTap: () {
              // Mostrar diálogo para editar tarea
              showDialog(
                context: context,
                builder: (context) {
                  String currentTitle = tasks[index].title;
                  return AlertDialog(
                    title: Text('Editar Tarea'),
                    content: TextField(
                      controller:
                      TextEditingController(text: currentTitle),
                      onChanged: (newText) {
                        currentTitle = newText;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancelar'),
                      ),
                      TextButton(
                        onPressed: () {
                          updateTask(tasks[index].id, currentTitle);
                          Navigator.pop(context);
                        },
                        child: Text('Guardar'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Mostrar diálogo para agregar tarea
          showDialog(
            context: context,
            builder: (context) {
              String newTaskTitle = '';
              return AlertDialog(
                title: Text('Nueva Tarea'),
                content: TextField(
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                  decoration: InputDecoration(
                    hintText: 'Ingrese el nombre de la tarea',
                    border: OutlineInputBorder(),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      addTask(newTaskTitle);
                      Navigator.pop(context);
                    },
                    child: Text('Agregar'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
