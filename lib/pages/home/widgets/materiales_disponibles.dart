import 'package:flutter/material.dart';

import 'package:p_house/pages/home/widgets/materiales_container.dart';
import 'package:p_house/pages/home/model/materiales_type.dart';

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
