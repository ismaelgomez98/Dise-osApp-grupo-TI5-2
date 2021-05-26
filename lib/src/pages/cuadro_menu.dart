import 'dart:ui';

import 'package:flutter/material.dart';

class CuadroMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Table(
        children: [
          TableRow(
            children: [
              _ContenidoCuadro(
                ruta: '/disenoBasico',
                titulo: 'App basica',
                color: Colors.pink,
                icono: Icons.camera_alt,
              ),
              _ContenidoCuadro(
                ruta: '/scrollBasico',
                titulo: 'app Scroll',
                color: Colors.purple,
                icono: Icons.camera_rounded,
              ),
            ],
          ),
          TableRow(
            children: [
              _ContenidoCuadro(
                ruta: '/homeMessenger',
                titulo: 'Clon messenger',
                color: Colors.blue,
                icono: Icons.cancel_rounded,
              ),
               _ContenidoCuadro(
                ruta: '/prueba_ui',
                titulo: 'Prueba en clase',
                color: Colors.green,
                icono: Icons.person,
              ) ,
            ],
          ),
          
        
        ],
      ),
    );
  }
}

class _Cuadro extends StatelessWidget {
  final Widget child;

  _Cuadro({required this.child});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.2, sigmaY: 4.2),
        child: Container(
          child: child,
          decoration: BoxDecoration(
            color: Color.fromRGBO(55, 53, 104, 0.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.all(17.0),
          height: 140.0,
        ),
      ),
    );
  }
}

class _ContenidoCuadro extends StatelessWidget {
  final IconData? icono;
  final String titulo;
  final Color? color;
  final String ruta;
  _ContenidoCuadro({
    this.icono,
    required this.titulo,
    this.color,
    required this.ruta,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ruta),
      child: Container(
        child: _Cuadro(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: color,
                child: Icon(
                  icono,
                  size: 34.0,
                ),
              ),
              SizedBox(height: 22.0),
              Text(
                titulo,
                style: TextStyle(fontSize: 15.0, color: color),
              )
            ],
          ),
        ),
      ),
    );
  }


}
