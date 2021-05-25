import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData icono;
  final Color ?color;

  IconButtonWidget({
    this.color = Colors.black,
   required this.icono,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icono,
        color: color,
        size: 30.0,
      ),
      onPressed: () {},
    );
  }
}
