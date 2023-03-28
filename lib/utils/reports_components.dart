import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

class UpdateCard extends StatelessWidget {
  UpdateCard(
      {super.key,
      required this.image,
      required this.title,
      required this.location,
      required this.like,
      required this.comment,
      required this.iconType});
  String image;
  String title;
  String location;
  String like;
  String comment;
  String iconType;

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return GestureDetector(
      onTap: () {
        context.go('/reported/progress');
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: ScreenSize.vertical! * 1, horizontal: ScreenSize.horizontal! * 3),
        height: ScreenSize.vertical! * 12,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: ScreenSize.vertical! * 10,
                  width: ScreenSize.horizontal! * 22.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage('$image'),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: ScreenSize.horizontal! * 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ScreenSize.vertical! * 0.5,
                    ),
                    Text(
                      '$title',
                      style: TextStyle(
                          color: Color(0xff47466D),
                          fontSize: ScreenSize.vertical! * 2.5,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$location',
                      style: TextStyle(
                          color: Color(0XFFCACACA),
                          fontSize: ScreenSize.vertical! * 1.2,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 2,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: ScreenSize.horizontal! * 1,
                        ),
                        Icon(
                          CupertinoIcons.flame,
                          size: ScreenSize.vertical! * 2.2,
                          color: Color(0xff47466D),
                        ),
                        SizedBox(
                          width: ScreenSize.horizontal! * 1,
                        ),
                        Text(
                          '$like',
                          style: TextStyle(
                              color: Color(0XFF47466D),
                              fontSize: ScreenSize.vertical! * 1.2,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: ScreenSize.horizontal! * 6,
                        ),
                        Icon(
                          Iconsax.messages_2,
                          size: ScreenSize.vertical! * 2.2,
                          color: Color(0xff47466D),
                        ),
                        SizedBox(
                          width: ScreenSize.horizontal! * 1,
                        ),
                        Text(
                          '$comment',
                          style: TextStyle(
                              color: Color(0XFF47466D),
                              fontSize: ScreenSize.vertical! * 1.2,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Image(
              image: AssetImage("assets/$iconType.png"),
              width: ScreenSize.horizontal! * 8,
            ),
          ],
        ),
      ),
    );
  }
}
