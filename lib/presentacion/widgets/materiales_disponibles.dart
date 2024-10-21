import 'package:flutter/material.dart';
import 'package:p_house2/pages/home/model/materiales_type.dart';

import 'package:p_house2/presentacion/widgets/materiales_container.dart';

class MaterialesDisponibleContainer extends StatelessWidget {
  const MaterialesDisponibleContainer({super.key});
  final technologies = MaterialesType.values;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (var element in technologies) MaterialesContainer(element),
        ]
      ),
    );
  }
}
