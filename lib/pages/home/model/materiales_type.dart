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
        return 'ladrillos';
      case MaterialesType.cemento:
        return 'cemento';
      case MaterialesType.tubos:
        return 'tubos';
      case MaterialesType.bloquedevidrio:
        return 'bloquedevidrio';
      case MaterialesType.bloquedecemento:
        return 'bloquedecemento';
      case MaterialesType.pisosceramicos:
        return 'pisosceramicos';  
    }
  }
}


