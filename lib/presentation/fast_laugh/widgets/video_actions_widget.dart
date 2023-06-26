import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class VedioActionsWidget extends StatelessWidget {
  final IconData icon;
  final String subTitle;
  const VedioActionsWidget({super.key, required this.icon, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Icon(icon, color: kWhiteColor,size: 30,),
          const SizedBox(height: 5,),
          Text(subTitle, style: const TextStyle(color: kWhiteColor, fontSize: 8),),
        ],
      ),
    );
  }
}