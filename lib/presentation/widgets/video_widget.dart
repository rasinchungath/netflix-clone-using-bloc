import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';

class VideoWidget extends StatelessWidget {
  final String image;
  final double bottomPosition;
  const VideoWidget({super.key, required this.image, this.bottomPosition=10});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        loadingImages,
        SizedBox(
          height: 200,
          child: Image.network(
            image,
          ),
        ),
        Positioned(
          bottom: bottomPosition,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black.withOpacity(.4),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
