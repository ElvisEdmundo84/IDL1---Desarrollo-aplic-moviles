import 'package:flutter/material.dart';
import 'package:p_house/presentacion/pages/shopping_cart_page.dart'; 

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

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Ladrillos',
      imageUrl: 'assets/imagenes/ladrillos.png',
      stock: 10,
      price: 19.99,
      description: 'Ladrillos de alta calidad para construcción.',
    ),
    Product(
      id: '2',
      name: 'Cemento',
      imageUrl: 'assets/imagenes/cemento.png',
      stock: 15,
      price: 24.99,
      description: 'Cemento resistente y duradero.',
    ),
    Product(
      id: '3',
      name: 'Tubos',
      imageUrl: 'assets/imagenes/tubos.png',
      stock: 20,
      price: 15.50,
      description: 'Tubos de PVC para todo tipo de construcciones.',
    ),
    Product(
      id: '4',
      name: 'Bloque de Vidrio',
      imageUrl: 'assets/imagenes/bloquedevidrio.png',
      stock: 25,
      price: 35.00,
      description: 'Bloques de vidrio para iluminación y diseño.',
    ),
    Product(
      id: '5',
      name: 'Bloque de Cemento',
      imageUrl: 'assets/imagenes/bloquedecemento.png',
      stock: 30,
      price: 12.00,
      description: 'Bloques de cemento, ideales para construir.',
    ),
    Product(
      id: '6',
      name: 'Pisos Cerámicos',
      imageUrl: 'assets/imagenes/pisosceramicos.png',
      stock: 50,
      price: 40.00,
      description: 'Pisos cerámicos de alta calidad.',
    ),
  ];

  final List<Product> selectedProducts = []; // Lista para productos seleccionados

  void _toggleProductSelection(Product product) {
    setState(() {
      if (selectedProducts.contains(product)) {
        selectedProducts.remove(product);
      } else {
        selectedProducts.add(product);
      }
    });
  }

  void _goToShoppingCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ShoppingCartPage(selectedProducts: selectedProducts),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Productos'),
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: _goToShoppingCart, // Navegación al carrito de compras
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            color: Colors.indigo,
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
              onTap: () => _toggleProductSelection(product), // Seleccionar o deseleccionar
              selected: selectedProducts.contains(product), // Resaltar si está seleccionado
              tileColor: selectedProducts.contains(product) ? Colors.blueAccent : Colors.indigo, // Cambiar color al seleccionar
            ),
          );
        },
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
