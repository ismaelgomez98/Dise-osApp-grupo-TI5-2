import 'package:disenos2/src/widgets/backgound_widget.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            BackgroundWidget(),
            Column(
              children: [
                _textMenu(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _textMenu() {
    return Container(
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
          SizedBox(height: 7.0,),
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
}
