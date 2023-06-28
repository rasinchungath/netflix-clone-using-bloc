import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            size: 30,
            color: kWhiteColor,
          ),
        ),
        kWidth10,
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 68, 67, 67),
              Color.fromARGB(255, 170, 169, 169),
            ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
          ),
        ),
        kWidth10,
      ],
    );
  }
}
