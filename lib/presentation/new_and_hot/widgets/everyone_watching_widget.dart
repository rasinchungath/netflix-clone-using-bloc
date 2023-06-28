import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/icon_title_widget.dart';
import '../../widgets/video_widget.dart';

class EveryoneWatchingWidget extends StatelessWidget {
  const EveryoneWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friends',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight10,
          Text(
            'Landing in the lead in the school musical is a dream come true for jodi, until the pressure stands her confidence and her relationship in to a tailspin',
            style: TextStyle(
              color: kGreyColor,
              fontSize: 12,
            ),
          ),
          kHeight20,
          VideoWidget(
            image: everyoneWatchingImage,
          ),
          kHeight10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconTitleWidget(
                icon: Icons.share,
                title: 'Share',
                iconsize: 25,
                fontsize: 8,
              ),
              kWidth20,
              IconTitleWidget(
                icon: Icons.add,
                title: 'My List',
                iconsize: 25,
                fontsize: 8,
              ),
              kWidth20,
              IconTitleWidget(
                icon: Icons.play_arrow,
                title: 'Play',
                iconsize: 25,
                fontsize: 8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}