import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final Widget? prefixIcon;
  final String? hintText;
  final double radius;
  final bool tipoPassword;
  final double? height;

  CampoTexto({
    this.radius = 30,
    required this.hintText,
    this.prefixIcon,
    this.tipoPassword = false,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: TextField(
        obscureText: tipoPassword,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
            prefixIcon: prefixIcon,
            hintText: hintText),
      ),
    );
  }
}
