import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;

  StackWidget({
    this.widget1,
    this.widget2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          widget1,
          Positioned(
            left: 30.0,
            top: 10.0,
            child: widget2,
          )
        ],
      ),
    );
  }
}
