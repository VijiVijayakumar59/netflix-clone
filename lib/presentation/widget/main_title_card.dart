import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/widget/main_card.dart';
import 'package:netflixclone/presentation/widget/main_tiltle.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          title: title,
        ),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => MainCard(),
            ),
          ),
        )
      ],
    );
  }
}
