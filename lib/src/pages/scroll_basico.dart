import 'package:flutter/material.dart';

class ScrollBasico extends StatelessWidget {
  final _textStyles = TextStyle(color: Colors.white, fontSize: 50.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _imagenFondo(),
        _contenido(),
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black26,
                Colors.grey,
              ],
            ),
          ),
        ),
        Center(
            child: ElevatedButton(
          onPressed: () {},
          child: Text('Bienvenido'),
        ))
      ],
    );
  }

  Widget _imagenFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.network(
        'https://imagenesfrasesbonitas.net/wp-content/uploads/2018/08/FondosPantalla10.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _contenido() {
    return Container(
      padding: EdgeInsets.only(top: 100.0),
      child: Center(
        child: Column(children: [
          Text(
            '11 °',
            style: _textStyles,
          ),
          Text(
            'Sabado',
            style: _textStyles,
          ),
          Expanded(child: Container()),
          Icon(Icons.expand_more_sharp, color: Colors.white, size: 80.0)
        ]),
      ),
    );
  }
}
