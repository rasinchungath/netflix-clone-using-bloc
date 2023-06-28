import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/widgets/video_widget.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';
import '../../widgets/icon_title_widget.dart';

class ComingSoonWidgetTile extends StatelessWidget {
  const ComingSoonWidgetTile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 50,
          child: Column(
            children: [
              SizedBox(
                height: 9,
              ),
              Text(
                'FEB',
                style: TextStyle(
                  color: kGreyColor,
                ),
              ),
              Text(
                '11',
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(
                image: comingSoonImage,
                bottomPosition: 20,
              ),
              SizedBox(
                width: size.width - 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'TALLGIRL2',
                      style: TextStyle(
                          fontSize: 25,
                          letterSpacing: -2,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          IconTitleWidget(
                            icon: Icons.notifications,
                            title: 'Remind Me',
                            iconsize: 20,
                            fontsize: 8,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          IconTitleWidget(
                            icon: Icons.info,
                            title: 'Info',
                            iconsize: 20,
                            fontsize: 8,
                          ),
                          kWidth10,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              kHeight10,
              const Text('Coming on Friday'),
              kHeight10,
              const Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeight10,
              const Text(
                'Landing in the lead in the school musical is a dream come true for jodi, until the pressure stands her confidence and her relationship in to a tailspin',
                style: TextStyle(
                  color: kGreyColor,
                  fontSize: 12,
                ),
              ),
              kHeight10,
            ],
          ),
        )
      ],
    );
  }
}
