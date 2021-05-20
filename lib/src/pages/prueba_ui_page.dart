import 'package:disenos2/src/widgets/circle_avatar_widget.dart';
import 'package:disenos2/src/widgets/icon_button_widget.dart';
import 'package:disenos2/src/widgets/menu_abajo_widget.dart';
import 'package:disenos2/src/widgets/stack_widget.dart';
import 'package:flutter/material.dart';

class PruebaUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          IconButtonWidget(icono: Icons.location_on),
          Expanded(child: Container()),
          _DatosAppbar(),
          Expanded(child: Container()),
          IconButtonWidget(icono: Icons.camera_alt_outlined),
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top:20.0),
          child: Column(
            children: [
              Container(
                child: StackWidget(
                  widget1: CircleAvatarWidget(
                    elevation: 20.0,
                    elevationColor: Colors.yellow,
                    backgroundImage: NetworkImage(
                        'https://www.pokeyplay.com/blog/wp-content/uploads/2017/11/spoiler___ash_pikachu_by_devildman-danwmqc-1024x949.png'),
                    radius: 120.0,
                  ),
                  widget2: CircleAvatarWidget(
                    radius: 20.0,
                    widthBorder: 5.0,
                    borderColor: Colors.white,
                    elevation: 20.0,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/5/51/Pokebola-pokeball-png-0.png'),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Pokedex #4',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 20.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Electrico',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Pikachu',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.yellow[700]),
              ),
              Divider(),
              SizedBox(height: 10.0),
              Text(
                'Mayo-20',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MenuAbajo(),
    );
  }
}

class _DatosAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Pokemon',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0)),
          Text('08:22 AM', style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
