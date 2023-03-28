import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:mykepolah/pages/forumsState/category.dart';
import 'package:mykepolah/tools/communityCard.dart';

import '../../tools/SizeConfig.dart';
import '../../tools/component.dart';
import '../../tools/constants.dart';

class Community extends StatefulWidget {
  final String area;
  
  Community({super.key, required this.area});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    final String area = widget.area;
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.safeBlockVertical! * 1.5),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        context.pop();
                      }, 
                      icon: Icon(Icons.arrow_back_ios_new)
                      ),
                      Text(
                        '$area',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal! * 9,
                          fontWeight: FontWeight.bold,
                          color: pricolor
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal! * 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical! * 3,),
                SlideBar(categories: ['Infastracture', 'Wildlife', 'Pollution'], onCountChanged: (index){
                  setState(() {
                    num = index;
                  });
                }),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1.5 ,),
                Container(
                  height: SizeConfig.blockSizeVertical! * 30,
                  child: (num == 0) ? Infastracture(area: '$area') : Wildlife(area: '$area')
                )
            ],
          ),
        ),
        ]
      )
    );
  }
}