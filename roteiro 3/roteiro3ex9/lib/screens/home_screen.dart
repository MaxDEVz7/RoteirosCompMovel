import 'package:flutter/material.dart';
import 'task_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Abrir Lista de Tarefas"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TaskListScreen()),
            );
          },
        ),
      ),
    );
  }
}
