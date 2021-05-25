import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisenoBasico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [_imgbg(), _calificacionPaisaje(), _contactos(), _textDesc()],
      ),
    );
  }

  Widget _imgbg() {
    return FadeInImage(
      height: 200.0,
      width: double.infinity,
      fit: BoxFit.cover,
      placeholder: AssetImage('assets/loading.gif'),
      image: NetworkImage(
          'https://c4.wallpaperflare.com/wallpaper/167/99/747/animales-ciervo-lago-paisaje-wallpaper-preview.jpg'),
    );
  }

  Widget _calificacionPaisaje() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Alaska estados unidos',
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          Row(
            children: [
              Icon(
                Icons.star_outline,
                color: Colors.red,
              ),
              Text('5.9'),
            ],
          )
        ],
      ),
    );
  }

  Widget _contactos() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _columContactos(icono: Icons.phone, titulo: 'Call'),
          _columContactos(icono: Icons.map, titulo: 'Route'),
          _columContactos(titulo: 'Share', icono: Icons.share),
        ],
      ),
    );
  }

  Widget _columContactos({required String titulo, required IconData icono}) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.blue,
          size: 32.0,
        ),
        SizedBox(height: 10.0),
        Text(
          titulo,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        ),
      ],
    );
  }

  Widget _textDesc() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      child: Text(
          'A veces, partes de un Estado con una historia o cultura características son llamados países, especialmente por los oriundos del lugar, como por ejemplo Escocia, Gales, Inglaterra o Irlanda del Norte, países que conforman el Reino Unido. Puede referirse también a regiones o incluso comarcas sin grandes diferencias culturales con las de los alrededores.',
          style: TextStyle(color:Colors.white),
          ),
    );
  }
}
