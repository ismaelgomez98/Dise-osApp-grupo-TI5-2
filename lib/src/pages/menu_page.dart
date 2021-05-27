import 'dart:ui';

import 'package:disenos2/src/widgets/backgound_widget.dart';
import 'package:disenos2/src/widgets/menu_abajo.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            BackgroundWidget(),
            SingleChildScrollView(
              child: Column(
                children: [
                  _textMenu(),
                  _obcionesMenu(context),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: MenuAbajoApp(),
    );
  }

  Widget _textMenu() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 85.0, left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Apps elemeto #1',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            'Aplicaciones del primer elemento',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _obcionesMenu(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: Table(
        children: [
          TableRow(
            children: [
              _contenidoMenu(
                context: context,
                texto: 'Diseño basico',
                color: Colors.blue,
                icono: Icons.person_pin_circle_sharp,
                ruta: '/disenoBasico',
              ),
              _contenidoMenu(
                context: context,
                texto: 'Scroll app',
                color: Colors.green,
                icono: Icons.screen_lock_rotation_outlined,
                ruta: '/scrollBasico',
              ),
            ],
          ),
          TableRow(
            children: [
              _contenidoMenu(
                context: context,
                texto: 'Clon messenger',
                color: Colors.pink,
                icono: Icons.messenger,
                ruta: '/homeMessenger',
              ),
              _contenidoMenu(
                context: context,
                texto: 'Proyecto clase',
                icono: Icons.mic_outlined,
                color: Colors.purpleAccent,
                ruta: '/prueba_ui',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _contenidoMenu({
    required BuildContext context,
    Color? color,
    IconData? icono,
    required String texto,
    required String ruta,
  }) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, ruta),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: color,
                  child: Icon(
                    icono,
                    size: 37.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  texto,
                  style: TextStyle(color: color, fontSize: 17.0),
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color.fromRGBO(71, 59, 84, 0.5),
            ),
            margin: EdgeInsets.all(15.0),
            height: 170.0,
          ),
        ),
      ),
    );
  }
}
