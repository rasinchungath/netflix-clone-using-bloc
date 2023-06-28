import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 500,
          child: Center(child: loadingImages),
        ),
        Container(
          height: 500,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(homeImage), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
