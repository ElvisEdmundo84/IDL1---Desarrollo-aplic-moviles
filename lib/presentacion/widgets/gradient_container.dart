import 'package:flutter/material.dart';
import 'package:p_house2/presentacion/widgets/custom_listview.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors; // Definimos un parámetro para el gradiente

  const GradientContainer({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const CustomListView(), // Agrega el widget de la lista
    );
  }
}
