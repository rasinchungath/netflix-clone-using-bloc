import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';

class IconTitleWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final double iconsize;
  final double fontsize;
  const IconTitleWidget({
    super.key,
    required this.icon,
    required this.title,
    this.iconsize=30,
    this.fontsize=10,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconsize,
        ),
        Text(
          title,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: fontsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
