import 'package:flutter/material.dart';
import 'package:p_house/pages/home/widgets/custom_listview.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

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
