import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/circle_image_avatar.dart';
import 'package:netflix_bloc/presentation/widgets/app_bar_widget.dart';
import 'package:netflix_bloc/presentation/widgets/custom_button.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: 'Downloads'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                color: kWhiteColor,
              ),
              const Text(
                'Smart Downloads',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Introducing downloads for you',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'We will download a personalised selection of\n movies and shows for you, so there\'s\nalways something to watch on your\ndevice ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          CircleImageAvatar(),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: CustomButton(
              buttonColor: kButtonColorBlue,
              label: 'Set up',
              buttonTextColor: kWhiteColor,
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
            child: CustomButton(
              buttonColor: kButtonColorWhite,
              label: 'See what you can download',
              buttonTextColor: kBlackColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
