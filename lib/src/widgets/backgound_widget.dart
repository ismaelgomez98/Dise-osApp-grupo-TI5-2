import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
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
            Color.fromRGBO(47, 38, 129, 1.0),
            Color.fromRGBO(35, 29, 87, 1.0),
          ],
        ),
      ),
    );

    final _cruadrado = Positioned(
      top: -70,
      left: -70,
      child: Transform.rotate(
        angle: 15,
        child: Container(
          height: 330.0,
          width: 330.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45.0),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(244, 168, 207, 1.0),
                Color.fromRGBO(230, 49, 143, 1.0),
              ],
            ),
          ),
        ),
      ),
    );



    final _circulo = Positioned(
      bottom: -120,
      right: -90,
      child: Transform.rotate(
        angle: 15,
        child: Container(
          height: 230.0,
          width: 230.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(135.0),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(244, 168, 207, 0.2),
                Color.fromRGBO(230, 49, 143, 0.2),
              ],
            ),
          ),
        ),
      ),
    );
    return Stack(
      children: [
        _fondo,
        _cruadrado,
        _circulo
      ],
    );
  }
}
