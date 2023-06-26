import 'dart:math';
import 'package:flutter/material.dart';

class TiltIMage extends StatelessWidget {
  final double angle;
  final String image;
  final double imageHeight;

  const TiltIMage(
      {super.key,
      required this.angle,
      required this.image,
      required this.imageHeight});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        width: 160,
        height: imageHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
