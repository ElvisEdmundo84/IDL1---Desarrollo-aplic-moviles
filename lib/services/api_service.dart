import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<List> getProducts() async {
    final response = await http.get(Uri.parse('https://shop-api-roan.vercel.app/product'));
    
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar productos');
    }
  }
}

class Product {
  static fromJson(json) {}
}
