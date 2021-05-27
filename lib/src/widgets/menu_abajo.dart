import 'package:flutter/material.dart';

class MenuAbajoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: BottomNavigationBar(
        iconSize: 27.0,
        unselectedItemColor: Color.fromRGBO(175, 165, 173, 1.0),
        selectedItemColor: Color.fromRGBO(233, 103, 205, 1.0),
        backgroundColor:Color.fromRGBO(71, 59, 84, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Graficas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
