import 'package:flutter/material.dart';
import 'package:p_house/pages/home/widgets/gradient_container.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text('Bienvenidos a P House')),
          body: const GradientContainer(
            colors: [ // Parámetro nombrado para el gradiente
              Colors.indigo,
              Color.fromARGB(255, 7, 2, 97),
            ],
          ),
        ),
      );
}
