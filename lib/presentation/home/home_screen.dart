import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_bloc/core/constants/vertical_images.dart';
import 'package:netflix_bloc/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_bloc/presentation/widgets/main_title_card.dart';
import 'widgets/hiding_appbar.dart';
import 'widgets/home_image_icons_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                const SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      HomeImageIconsWidget(),
                      MainTitleCard(
                        title: 'Released in the past year',
                        images: verticalImageUrl,
                      ),
                      MainTitleCard(
                        title: 'Trending Now',
                        images: verticalImageUrl2,
                      ),
                      NumberTitleCard(title: 'Top 10 TV Shows in India Today'),
                      MainTitleCard(
                        title: 'Tense Dramas',
                        images: verticalImageUrl2,
                      ),
                      MainTitleCard(
                        title: 'South Indian Cinema',
                        images: verticalImageUrl,
                      ),
                    ],
                  ),
                ),
                scrollNotifier.value
                    ? const HidingAppbar()
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
