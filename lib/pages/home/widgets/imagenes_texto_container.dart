import 'package:flutter/material.dart';

enum MaterialesType {
  ladrillos,
  cemento,
  tubos,
  bloquedevidrio,
  bloquedecemento,
  pisosceramicos
}

extension MaterialesTypeExtension on MaterialesType {
  String get image {
    switch (this) {
      case MaterialesType.ladrillos:
        return 'assets/imagenes/ladrillos.png';
      case MaterialesType.cemento:
        return 'assets/imagenes/cemento.png';
      case MaterialesType.tubos:
        return 'assets/imagenes/tubos.png';
      case MaterialesType.bloquedevidrio:
        return 'assets/imagenes/bloquedevidrio.png';
      case MaterialesType.bloquedecemento:
        return 'assets/imagenes/bloquedecemento.png';
      case MaterialesType.pisosceramicos:
        return 'assets/imagenes/pisosceramicos.png';
    }
  }

  String get name {
    switch (this) {
      case MaterialesType.ladrillos:
        return 'Ladrillos';
      case MaterialesType.cemento:
        return 'Cemento';
      case MaterialesType.tubos:
        return 'Tubos';
      case MaterialesType.bloquedevidrio:
        return 'Bloque de Vidrio';
      case MaterialesType.bloquedecemento:
        return 'Bloque de Cemento';
      case MaterialesType.pisosceramicos:
        return 'Pisos Cerámicos';
    }
  }
}

class MaterialesList extends StatelessWidget {
  const MaterialesList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Muestra dos columnas de materiales
      children: MaterialesType.values.map((material) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                material.image, // Carga la imagen
                height: 100, // Ajusta el tamaño de la imagen
                width: 100,
                fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
              ),
              const SizedBox(height: 10), // Espacio entre la imagen y el texto
              Text(
                material.name, // Muestra el nombre del material
                style: const TextStyle(
                  fontSize: 16, // Tamaño de la fuente del nombre
                  fontWeight: FontWeight.bold, // Negrita para el texto
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
