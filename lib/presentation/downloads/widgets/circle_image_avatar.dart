import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/tilt_image.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class CircleImageAvatar extends StatelessWidget {
  CircleImageAvatar({super.key});

  final List<String> imageUrl = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lCanGgsqF4xD2WA5NF8PWeT3IXd.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 335,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 145,
            backgroundColor: kGreyColor.withOpacity(.45),
          ),
          loadingImages,
          Positioned(
            bottom: 52,
            child: Padding(
              padding: const EdgeInsets.only(left: 130),
              child: TiltIMage(
                imageHeight: 190,
                angle: 18,
                image: imageUrl[1],
              ),
            ),
          ),
          Positioned(
            bottom: 52,
            child: Padding(
              padding: const EdgeInsets.only(right: 130),
              child: TiltIMage(
                imageHeight: 190,
                angle: -18,
                image: imageUrl[2],
              ),
            ),
          ),
          Positioned(
            left: 100,
            bottom: 45,
            child: TiltIMage(
              imageHeight: 220,
              angle: 0,
              image: imageUrl[0],
            ),
          ),
        ],
      ),
    );
  }
}
