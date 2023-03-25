import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mykepolah/tools/component.dart';
import 'package:mykepolah/tools/constants.dart';

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
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 10),
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
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 3,),
              SlideBar(categories: ['Favourite', 'Selangor', 'Johor'], 
              ),
              
            ],
          ),
        ),
      )
    );
  }
}