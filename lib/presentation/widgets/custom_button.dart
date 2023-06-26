import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final Color buttonTextColor;
  final String label;
  final VoidCallback onPressed;
  const CustomButton(
      {super.key,
      required this.buttonColor,
      required this.label,
      required this.buttonTextColor,
      required this.onPressed
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: onPressed,
        color: buttonColor,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: buttonTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
