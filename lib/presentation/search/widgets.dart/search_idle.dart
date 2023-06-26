import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/constants/horizontal_images.dart';
import 'package:netflix_bloc/presentation/search/widgets.dart/search_idle_tile.dart';
import 'package:netflix_bloc/presentation/search/widgets.dart/title.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(
          title: 'Top Searches',
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SearchVideoTile(
                image: horizontalImages[index],
              );
            },
            itemCount: horizontalImages.length,
          ),
        ),
      ],
    );
  }
}
