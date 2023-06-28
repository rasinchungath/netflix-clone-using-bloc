import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class HidingAppbar extends StatelessWidget {
  const HidingAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 20000),
      height: 90,
      width: double.infinity,
      color: Colors.black.withOpacity(0.5),
      child: Column(
        children: [
          Row(
            children: [
              kWidth10,
              Image.network(
                'https://static.vecteezy.com/system/resources/previews/017/396/804/non_2x/netflix-mobile-application-logo-free-png.png',
                height: 38,
                width: 38,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.cast,
                  size: 30,
                  color: kWhiteColor,
                ),
              ),
              kWidth10,
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 68, 67, 67),
                    Color.fromARGB(255, 170, 169, 169),
                  ], begin: Alignment.bottomLeft, end: Alignment.topLeft),
                ),
              ),
              kWidth10,
            ],
          ),
          const SizedBox(height: 3,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'TV Shows',
                style: hidingAppbarStyle,
              ),
              Text(
                'Movies',
                style: hidingAppbarStyle,
              ),
              Text(
                'Categories',
                style: hidingAppbarStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
