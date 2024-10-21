import 'package:flutter/material.dart';

import '../../main.dart';

class ShoppingCartPage extends StatelessWidget {
  final List<Product> selectedProducts;

  const ShoppingCartPage({super.key, required this.selectedProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de Compras'),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: selectedProducts.length,
        itemBuilder: (context, index) {
          final product = selectedProducts[index];
          return ListTile(
            leading: Image.asset(product.imageUrl), // Imagen del producto
            title: Text(product.name),
            subtitle: Text('S/.${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
