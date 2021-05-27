import 'package:flutter/material.dart';

class FloatButtomBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      onPressed: () => Navigator.pop(context),
    );
  }
}
