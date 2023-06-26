import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/search/widgets.dart/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  

  final String image =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Movies & TV'),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: GridView.count(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: .6,
            crossAxisCount: 3,
            children: List.generate(18, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
