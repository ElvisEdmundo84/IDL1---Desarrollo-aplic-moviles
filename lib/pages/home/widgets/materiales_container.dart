import 'package:flutter/material.dart';

import 'package:p_house2/pages/home/model/materiales_type.dart';

class MaterialesContainer extends StatelessWidget {
  const MaterialesContainer(this.materiales, {super.key});
  final MaterialesType materiales;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.horizontal(),
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Image.asset(
          materiales.image,
          width: 70,
        ),
      ),
    );
  }
}
