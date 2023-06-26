import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/vertical_images.dart';
import '../../widgets/main_title.dart';
import 'number_card.dart';

class NumberTitleCard extends StatelessWidget {
  final String title;
  const NumberTitleCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(
            title: title,
          ),
          kHeight10,
          LimitedBox(
            maxHeight: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return NumberCard(
                  image: verticalImageUrl[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
