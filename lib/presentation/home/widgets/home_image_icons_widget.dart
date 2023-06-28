import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import 'home_image_.dart';
import '../../widgets/icon_title_widget.dart';

class HomeImageIconsWidget extends StatelessWidget {
  const HomeImageIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const HomeImage(),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const IconTitleWidget(icon: Icons.add, title: 'My List'),
              TextButton.icon(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                  kWhiteColor,
                )),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: kBlackColor,
                  size: 25,
                ),
                label: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Text(
                    'Play',
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const IconTitleWidget(icon: Icons.info_outline, title: 'Info'),
            ],
          ),
        ),
      ],
    );
  }
}
