import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de imágenes y textos
    final List<Map<String, String>> items = [
      {'image': 'assets/imagenes/ladrillos.png', 'text': 'Ladrillo S/1.00'},
      {'image': 'assets/imagenes/cemento.png', 'text': 'Cemento S/ 45.00'},
      {'image': 'assets/imagenes/tubos.png', 'text': 'Tubo S/ 5.00'},
      {'image': 'assets/imagenes/bloquedevidrio.png', 'text': 'Bloque de vidrio S/ 8.00'},
      {'image': 'assets/imagenes/bloquedecemento.png', 'text': 'Bloque de cemento S/ 7.00'},
      {'image': 'assets/imagenes/pisosceramicos.png', 'text': 'Pisos ceramicos S/ 22.00'},
      // Puedo agregar más elementos si lo necesitas
    ];

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: SizedBox(
            width: 50, // Ancho de la imagen
            height: 50, // Alto de la imagen
            child: Image.asset(item['image']!, fit: BoxFit.cover), // Carga la imagen local
          ),
          title: Text(item['text']!), // Texto al lado de la imagen
        );
      },
    );
  }
}
