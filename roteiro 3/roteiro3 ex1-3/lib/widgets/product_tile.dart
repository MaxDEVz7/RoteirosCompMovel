import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final String nome;
  const ProductTile({super.key, required this.nome});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.shopping_cart),
      title: Text(nome),
    );
  }
}
