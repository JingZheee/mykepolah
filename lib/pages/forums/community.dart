import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import '../../tools/SizeConfig.dart';
import '../../tools/component.dart';
import '../../tools/constants.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
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
                        'Hulu Selangor',
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
                SlideBar(categories: ['Infastracture', 'Wildlife', 'Pollution'], onCountChanged: (num){}),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1.5 ,),
                Container(
                  height: SizeConfig.blockSizeVertical! * 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          context.go('/forum/community/update');
                        },
                        child: Container(
                          padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 1, left: SizeConfig.blockSizeHorizontal! * 2, right: SizeConfig.blockSizeHorizontal! * 2),
                          height: SizeConfig.blockSizeVertical! * 25,
                          width: SizeConfig.blockSizeHorizontal! * 43,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: pricolor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: SizeConfig.blockSizeVertical! * 21,
                                width: SizeConfig.blockSizeHorizontal! * 43,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  color: pricolor,
                                  image: DecorationImage(
                                    image: AssetImage('assets/pothole/pothole.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                                ),
                              ),
                              SizedBox(height: SizeConfig.blockSizeVertical! * 1 ,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pot Hole',
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockSizeVertical! * 3,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Road Issues',
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockSizeVertical! * 1.3,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                      
                                    ],
                                  ),
                                  Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                    size: SizeConfig.blockSizeVertical! * 3.5,
                                  )                              
                                ],
                              )
                      
                            ]
                          ),
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 3,),
                      Container(
                        height: SizeConfig.blockSizeVertical! * 25,
                        width: SizeConfig.blockSizeHorizontal! * 43,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: pricolor,
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 1, left: SizeConfig.blockSizeHorizontal! * 1, right: SizeConfig.blockSizeHorizontal! * 1),
                              height: SizeConfig.blockSizeVertical! * 22,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: const AspectRatio(
                                  aspectRatio: 4 / 5,
                                  child: Image(
                                    image: AssetImage('assets/pothole/pothole.jpeg'),
                                    fit: BoxFit.fill,
                                  ),
                                  ),
                              ),
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
        ]
      )
    );
  }
}