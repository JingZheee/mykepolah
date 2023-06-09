import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import 'SizeConfig.dart';
import 'constants.dart';

class ForumCard extends StatelessWidget {
  ForumCard({super.key, required this.image, required this.name});

  String image;
  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical! * 25,
      width: SizeConfig.blockSizeHorizontal! * 38,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 0)
          ),
        ],
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: InkWell(
          onTap: () {
            context.go('/forum/community/$name');
          },
          child: Column(
            children: [
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 5),
              Image.asset('assets/selangor/huluselangor.png'),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 2),
              Text(
                '$name',
                style: TextStyle(
                  color: pricolor,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.blockSizeVertical! * 2
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}