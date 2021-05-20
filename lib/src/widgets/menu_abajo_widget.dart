import 'package:flutter/material.dart';

class MenuAbajo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.person,size: 40.0,),label: 'Personas'),
      BottomNavigationBarItem(icon: Icon(Icons.phone_locked,size: 40.0,),label: 'Llmadas'),
    ]);
  }
}