import 'package:flutter/material.dart';
import '../widgets/task_tile.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  final TextEditingController controller = TextEditingController();

  final List<String> tarefas = [];

  void adicionarTarefa() {
    if (controller.text.isNotEmpty) {
      setState(() {
        tarefas.add(controller.text);
        controller.clear();
      });
    }
  }

  void removerTarefa(int index) {
    setState(() {
      tarefas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Tarefas")),
      body: Column(
        children: [
          // 🔹 Campo + botão
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      labelText: "Digite uma tarefa",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: adicionarTarefa,
                  child: const Text("Adicionar"),
                ),
              ],
            ),
          ),

          // 🔹 Lista
          Expanded(
            child: tarefas.isEmpty
                ? const Center(child: Text("Nenhuma tarefa adicionada"))
                : ListView.builder(
                    itemCount: tarefas.length,
                    itemBuilder: (context, index) {
                      return TaskTile(
                        nome: tarefas[index],
                        onRemove: () => removerTarefa(index),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
