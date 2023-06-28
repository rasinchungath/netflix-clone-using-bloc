import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import 'main_card.dart';
import 'main_title.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  final List<String> images;
  const MainTitleCard({super.key, required this.title, required this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(title: title),
          kHeight10,
          LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return MainCard(
                  image: images[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
