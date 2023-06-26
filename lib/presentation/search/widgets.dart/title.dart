import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class TitleText extends StatelessWidget {
  final String title;
  const TitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: kWhiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
