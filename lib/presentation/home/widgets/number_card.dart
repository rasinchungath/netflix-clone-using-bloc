import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  final String image;
  final int index;
  const NumberCard({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 35,
            ),
            Stack(
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
          ],
        ),
        Positioned(
          bottom: -29,
          left: 5,
          child: BorderedText(
            strokeWidth: 6,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  fontSize: 100,
                  color: kBlackColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
