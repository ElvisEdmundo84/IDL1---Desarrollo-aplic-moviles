import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    required this.fontWeight,
    this.fontFamily,
    super.key,
  });

  final String text;
  final FontWeight fontWeight;
  final String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontFamily: fontFamily ?? 'PixelifySans',
        fontWeight: fontWeight,
      ),
    );
  }
}
