import 'package:flutter/material.dart';

class AvatarActive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/3b/b7/37/3bb737bf1c5aa79a8ceb72a3b65db425.jpg'),
        ),
        Positioned(
            bottom: -1.0,
            right: 1.0,
            child: Icon(
              Icons.circle,
              color: Colors.green,
              size: 20.0,
            ))
      ],
    );
  }
}
