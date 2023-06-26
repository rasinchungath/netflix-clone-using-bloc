import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/fast_laugh/widgets/video_actions_widget.dart';

class VedioListItem extends StatelessWidget {
  final int index;
  const VedioListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black.withOpacity(.4),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 30,
                    ),
                  ),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rktDFPbfHfUbArZ6OOOKsXcv0Bm.jpg',
                        ),
                        radius: 30,
                      ),
                    ),
                    VedioActionsWidget(
                        icon: Icons.emoji_emotions, subTitle: 'LOL'),
                    VedioActionsWidget(icon: Icons.add, subTitle: 'My List'),
                    VedioActionsWidget(icon: Icons.share, subTitle: 'Share'),
                    VedioActionsWidget(
                        icon: Icons.play_arrow, subTitle: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
