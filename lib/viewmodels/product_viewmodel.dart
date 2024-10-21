import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;
  int _cartItemCount = 0;
  int get cartItemCount => _cartItemCount;

  Future<void> fetchProducts() async {
    _products = await ApiService.getProducts();
    notifyListeners();
  }

  void addToCart(Product product) {
    var stock = product.stock;
    if (_cartItemCount < stock!) {
      _cartItemCount++;
      notifyListeners();
    } else {
      throw Exception("Stock insuficiente");
    }
  }
}

class ApiService {
  static getProducts() {}
}

class Product {
  num? get stock => null;
}
