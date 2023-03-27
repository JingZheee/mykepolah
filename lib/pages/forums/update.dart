import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykepolah/tools/updateCard.dart';
import '../../tools/SizeConfig.dart';
import '../../tools/component.dart';
import '../../tools/constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
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
                        'Pot Hole',
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
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal! * 8),
                  child: SlideBar(categories: ['Reported', 'Fixed'], onCountChanged: (num){}),
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  children:[ 
                    Container(
                      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 1, horizontal: SizeConfig.blockSizeHorizontal! * 3),
                      height: SizeConfig.blockSizeVertical! * 12,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 10,
                            width: SizeConfig.blockSizeHorizontal! * 22.5,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              image: DecorationImage(
                                image: AssetImage('assets/pothole/pothole.jpeg'),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal! * 3,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: SizeConfig.blockSizeVertical! * 0.5,),
                              Text(
                                'Pot Hole',
                                style: TextStyle(
                                  color: pricolor,
                                  fontSize: SizeConfig.blockSizeVertical! * 2.5,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Jalan Tun Razak, Puchong',
                                style: TextStyle(
                                  color: Color(0XFFCACACA),
                                  fontSize: SizeConfig.blockSizeVertical! * 1.2,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                              SizedBox(height: SizeConfig.blockSizeVertical! * 2,),
                              Row(
                                children: [
                                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 1,),
                                  Icon(
                                    Icons.favorite_border,
                                    size: SizeConfig.blockSizeVertical! * 2.2,
                                    color: pricolor,
                                  ),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 1,),
                                  Text(
                                    '273',
                                    style: TextStyle(
                                      color: Color(0XFF47466D),
                                      fontSize: SizeConfig.blockSizeVertical! * 1.2,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 6,),
                                  Icon(
                                    CupertinoIcons.chat_bubble_2,
                                    size: SizeConfig.blockSizeVertical! * 2.2,
                                    color: pricolor,
                                  ),
                                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 1,),
                                  Text(
                                    '273',
                                    style: TextStyle(
                                      color: Color(0XFF47466D),
                                      fontSize: SizeConfig.blockSizeVertical! * 1.2,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ],
                              )

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.blockSizeHorizontal! * 3,),
                    UpdateCard(image: 'assets/pothole/pothole.jpeg', title: 'Pot Hole', location: 'Jalan Tun Razak, Puchong', like: '273', comment: '273')
                  ],
                )
              ],

            ),
          )


         ]
      )
    );
  }
}