import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String nome;
  final VoidCallback onRemove;

  const TaskTile({super.key, required this.nome, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check_circle_outline),
      title: Text(nome),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: onRemove,
      ),
    );
  }
}
