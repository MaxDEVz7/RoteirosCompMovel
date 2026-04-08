import 'package:flutter/material.dart';
import '../widgets/product_tile.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  final List<String> produtos = const [
    "Arroz",
    "Feijão",
    "Macarrão",
    "Leite",
    "Café"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Produtos")),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ProductTile(
            nome: produtos[index],
          );
        },
      ),
    );
  }
}