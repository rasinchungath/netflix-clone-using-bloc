import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class IconTitleWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const IconTitleWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            color: kWhiteColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
