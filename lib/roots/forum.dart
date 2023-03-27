import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:mykepolah/pages/forumsState/state.dart';
import 'package:mykepolah/tools/component.dart';
import 'package:mykepolah/tools/constants.dart';
import 'package:mykepolah/tools/forumCard.dart';

import '../tools/SizeConfig.dart';

class Forum extends StatefulWidget {
  Forum({super.key});

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  int num = 0;
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 7,),
              Text(
                'Forum',
                style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal! * 9,
                  fontWeight: FontWeight.bold,
                  color: pricolor
                ),
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
              SlideBar(categories: ['Selangor', 'Perak', 'Sabah'], onCountChanged: (index){
                setState(() {
                  num = index;
                  print(num);
                });
              },
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 3 ,),
              Expanded(
                child: Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 80,
                        padding: EdgeInsets.only(top: SizeConfig.blockSizeHorizontal! * 1.5, ),
                        child: (num == 0) ? Selangor() : Perak()
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}