import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import '../../../core/constants/constants.dart';

class SearchVideoTile extends StatelessWidget {
  final String image;
  const SearchVideoTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              loadingImages,
              Container(
                height: 75,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
            child: Text(
              'Movie Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: kWhiteColor,
              ),
            ),
          ),
          const CircleAvatar(
            radius: 23,
            backgroundColor: kWhiteColor,
            child: CircleAvatar(
              radius: 21,
              backgroundColor: kBlackColor,
              child: Icon(
                Icons.play_arrow,
                size: 30,
                color: kWhiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
