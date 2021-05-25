import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;

  StackWidget({
    required this.widget1,
    required this.widget2,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          widget1,
          Positioned(
            left: 20.0,
            top: 10.0,
            child: widget2,
          )
        ],
      ),
    );
  }
}
