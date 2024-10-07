import 'package:flutter/material.dart';

import 'package:p_house/pages/home/widgets/styled_text.dart';
import 'package:p_house/pages/home/widgets/materiales_disponibles.dart';

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/imagenes/logophouse.png',
            width: 300,
          ),
          const SizedBox(height: 50),
          const StyledText(
            'Materiales de construcción',
            fontWeight: FontWeight.w400,
            fontFamily: 'IndieFlower',
          ),
          const StyledText(
            'Productos',
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 20),
          const MaterialesDisponibleContainer(),
          const Text('data'),
        ],
      ),
    );
  }
}
