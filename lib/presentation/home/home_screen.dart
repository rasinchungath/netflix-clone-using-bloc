import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/constants/constants.dart';
import 'package:netflix_bloc/core/constants/vertical_images.dart';
import 'package:netflix_bloc/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_bloc/presentation/widgets/main_title_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                loadingImages,
                Container(
                  height: 500,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(homeImage), fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            const MainTitleCard(
              title: 'Released in the past year',
              images: verticalImageUrl,
            ),
            const MainTitleCard(
              title: 'Trending Now',
              images: verticalImageUrl2,
            ),
            const NumberTitleCard(title: 'Top 10 TV Shows in India Today'),
            const MainTitleCard(
              title: 'Tense Dramas',
              images: verticalImageUrl2,
            ),
            const MainTitleCard(
              title: 'South Indian Cinema',
              images: verticalImageUrl,
            ),
          ],
        ),
      ),
    );
  }
}
