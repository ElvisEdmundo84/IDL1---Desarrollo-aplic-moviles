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

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      stock: json['stock'],
      price: json['price'],
      description: json['description'],
    );
  }
}
