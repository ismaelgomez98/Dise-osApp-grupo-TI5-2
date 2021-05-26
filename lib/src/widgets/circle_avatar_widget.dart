import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  final NetworkImage backgroundImage;
  final double? radius;
  final double? elevation;
  final Color? borderColor;
  final Color? elevationColor;
  final double? widthBorder;

  CircleAvatarWidget({
    this.widthBorder = 0.0,
    this.elevationColor = Colors.white,
    this.radius = 30.0,
    this.borderColor = Colors.white,
    required this.backgroundImage,
    this.elevation = 1.0,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor!, width: widthBorder!),
          boxShadow: [
            BoxShadow(
              blurRadius: elevation!,
              color: elevationColor!,
            )
          ]),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: backgroundImage,
      ),
    );
  }
}
