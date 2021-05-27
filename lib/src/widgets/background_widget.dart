import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _fondo = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(59, 99, 154, 1.0),
            Color.fromRGBO(34, 54, 83, 1.0)
          ])),
    );

    final _cuadrado = Positioned(
      top: -140,
      left: -100,
      child: Transform.rotate(
        angle: 70,
        child: Container(
          width: 400.0,
          height: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(204, 34, 173, 1.0),
                Color.fromRGBO(220, 121, 202, 10.0)
              ])),
        ),
      ),
    );

    return Container(
      child: Stack(
        children: [_fondo, _cuadrado],
      ),
    );
  }
}
