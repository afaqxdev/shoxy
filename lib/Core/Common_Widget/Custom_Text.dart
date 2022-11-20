import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    required this.name,
    required this.size,
    required this.color,
    Key? key,
  }) : super(key: key);
  final String name;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$name",
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
