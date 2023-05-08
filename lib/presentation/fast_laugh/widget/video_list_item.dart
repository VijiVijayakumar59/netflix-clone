import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixclone/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      color: kwhiteColor,
                      size: 30,
                    ),
                  ),
                ),
                //right side
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 13),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                              'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t7aUi8jbsIUSCNqA1akAbKjBWjU.jpg'),
                        ),
                      ),
                      VideoActionsWidget(
                          icon: Icons.emoji_emotions, title: 'Lol'),
                      VideoActionsWidget(icon: Icons.add, title: 'My List'),
                      VideoActionsWidget(icon: Icons.share, title: 'Share'),
                      VideoActionsWidget(icon: Icons.play_arrow, title: 'Play'),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhiteColor,
          size: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            color: kwhiteColor,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
