import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../tools/SizeConfig.dart';
import '../../tools/forumCard.dart';

class Selangor extends StatelessWidget {
  const Selangor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
          ],
        )
      ],
    );
  }
}

class Perak extends StatelessWidget {
  const Perak({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
            ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
          ],
        ),
        SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor'),
        //     ForumCard(image: 'assets/selangor/huluselangor.png', name: 'Hulu Selangor')
        //   ],
        // )
      ],
    );
  }
}