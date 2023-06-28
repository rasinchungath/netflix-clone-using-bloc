import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import '../../core/constants/constants.dart';

class MainCard extends StatelessWidget {
  final String image;
  const MainCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        children: [
          Container(
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: kGreyColor,
              ),
              borderRadius: kBorderRadius,
            ),
            child: const Center(
              child: loadingImages,
            ),
          ),
          Container(
            width: 150,
            decoration: BoxDecoration(
              borderRadius: kBorderRadius,
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
