import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'P House',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        id: '1',
        name: 'Ladrillos',
        imageUrl: 'assets/imagenes/ladrillos.png',
        stock: 10000,
        price: 1.00,
        description: 'Ladrillos de alta calidad para construcción.',
      ),
      Product(
        id: '2',
        name: 'Cemento',
        imageUrl: 'assets/imagenes/cemento.png',
        stock: 10000,
        price: 25.00,
        description: 'Cemento resistente y duradero.',
      ),
      Product(
        id: '3',
        name: 'Tubos',
        imageUrl: 'assets/imagenes/tubos.png',
        stock: 2000,
        price: 5.99,
        description: 'Tubos de PVC para instalaciones.',
      ),
      Product(
        id: '4',
        name: 'Bloques de Vidrio',
        imageUrl: 'assets/imagenes/bloquedevidrio.png',
        stock: 12000,
        price: 8.99,
        description: 'Bloques de vidrio para decoración.',
      ),
      Product(
        id: '5',
        name: 'Bloques de Cemento',
        imageUrl: 'assets/imagenes/bloquedecemento.png',
        stock: 18000,
        price: 9.99,
        description: 'Bloques de cemento para construcciones robustas.',
      ),
      Product(
        id: '6',
        name: 'Pisos Cerámicos',
        imageUrl: 'assets/imagenes/pisosceramicos.png',
        stock: 25000,
        price: 24.99,
        description: 'Pisos cerámicos de alta calidad.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: const Color.fromARGB(255, 46, 15, 219), // Fondo azul
        child: Column(
          children: [
            Image.asset(
              'assets/imagenes/logophouse.png', // Logo en la parte superior
              width: 150,
              height: 150,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    color: Colors.indigo, // Fondo de cada tarjeta de producto
                    child: ListTile(
                      leading: Image.asset(product.imageUrl), // Imagen del producto
                      title: Text(
                        product.name,
                        style: const TextStyle(color: Colors.white), 
                      ),
                      subtitle: Text(
                        product.description,
                        style: const TextStyle(color: Colors.white70), 
                      ),
                      trailing: Text(
                        'S/.${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.white), 
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final int stock;
  final double price;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.stock,
    required this.price,
    required this.description,
  });
}
