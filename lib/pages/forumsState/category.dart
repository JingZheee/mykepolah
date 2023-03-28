import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../tools/SizeConfig.dart';
import '../../tools/communityCard.dart';
import '../../tools/constants.dart';

class Infastracture extends StatelessWidget {
  Infastracture({super.key, required this.area});
  final String area;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CommunityCard(image: 'assets/pothole/pothole.jpeg', area: '$area', title: 'Pot Hole', issue: 'Road Issue', colour: pricolor),
        SizedBox(width: SizeConfig.blockSizeHorizontal! * 3 ,),
        CommunityCard(image: 'assets/pothole/download.jpeg', area: '$area', title: 'Streetlight', issue: 'Road Issue', colour: seccolor),
        
      ],
    );
  }
}

class Wildlife extends StatelessWidget {
  Wildlife({super.key, required this.area});
  final String area;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        CommunityCard(image: 'assets/pothole/pothole.jpeg', area: '$area', title: 'Pot Hole', issue: 'Road Issue', colour: pricolor),
        SizedBox(width: SizeConfig.blockSizeHorizontal! * 3 ,),
        CommunityCard(image: 'assets/pothole/download.jpeg', area: '$area', title: 'Streetlight', issue: 'Road Issue', colour: Colors.black),
        
      ],
    );
  }
}