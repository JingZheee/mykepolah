import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mykepolah/utils/forum_components.dart';

import '../../utils/homepage_components.dart';
import '../../utils/size_config.dart';

class ForumPage extends StatelessWidget {
  const ForumPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: Container(
        color: Color(0xffF6F6F6),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ScreenSize.horizontal! * 5,
                    top: ScreenSize.vertical! * 5,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          color: Color(0xff47466D),
                          size: ScreenSize.horizontal! * 8,
                        ),
                      ),
                      SizedBox(
                        width: ScreenSize.horizontal! * 2,
                      ),
                      Text(
                        "Forum",
                        style: TextStyle(
                          color: Color(0xff47466D),
                          fontSize: ScreenSize.horizontal! * 8,
                          fontWeight: FontWeight.w800,
                          letterSpacing: ScreenSize.horizontal! * 0.3,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenSize.horizontal! * 10,
                    vertical: ScreenSize.vertical! * 3,
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    ForumPostCard(
                      name: "CGay Yonz",
                      address: "Kuala Kangsar, Kelantan",
                      networkImagePerson:
                          "https://scontent-kul3-1.xx.fbcdn.net/v/t31.18172-8/12339515_10153417110783650_3413788825013236803_o.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vewv1-H8cvkAX8B1se8&_nc_ht=scontent-kul3-1.xx&oh=00_AfDjDPok-IENLtiVajRqR9zRGUhTXvh1BtenQ4kMkb4eyA&oe=64463FB2",
                      networkImagePlace:
                          "https://da4dkroembtou.cloudfront.net/wp-content/uploads/2020/12/main_1512_P4a_sf_1.jpg",
                      title: "So many potholes here...",
                      description: "Please fix this ASAP bruh",
                      likes: 243,
                      onTap: () {},
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 3,
                    ),
                    GreenUnderlinedText(
                        text: "Comments (5)",
                        top: ScreenSize.vertical! * 2,
                        left: ScreenSize.horizontal! * 3,
                        height: ScreenSize.vertical! * 2.5,
                        width: ScreenSize.horizontal! * 45,
                        fontSize: ScreenSize.horizontal! * 7),
                    SizedBox(
                      height: ScreenSize.vertical! * 3,
                    ),
                    const CommentCard(
                      name: "Yappy Cheng",
                      comment: "Why has this not been fixed yet? Its been 4 months!",
                      networkImage:
                          "https://scontent.fkul15-1.fna.fbcdn.net/v/t39.30808-6/290182641_1668872583472557_6852136987280562585_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lCnq8XxjCtQAX9TKfH4&_nc_ht=scontent.fkul15-1.fna&oh=00_AfDqlnlLlGnpqllzK9Y799B8dB3IsRmrxT4hXikD6blE8g&oe=64245D36",
                      likes: 94,
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 2,
                    ),
                    const CommentCard(
                      name: "Ahxiantherealone",
                      comment: "Walao, i didnt see any progress at all",
                      networkImage:
                          "https://scontent.fkul15-1.fna.fbcdn.net/v/t1.18169-9/22519594_1931366143856743_1666218553300330714_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=Exwv6eG1B7IAX8t4kg0&_nc_ht=scontent.fkul15-1.fna&oh=00_AfDrEahXyD2u7_vb6ZWngS-re9MQI_K9ib1OGmC-ZYMOjw&oe=64475F57",
                      likes: 36,
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 2,
                    ),
                    const CommentCard(
                      name: "huanhayden",
                      comment: "Sibu also like this sometimes",
                      networkImage:
                          "https://scontent.fkul15-1.fna.fbcdn.net/v/t39.30808-6/301974143_1080069962640870_1928438618233000259_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=vIDUK65g2dcAX80sBlD&_nc_ht=scontent.fkul15-1.fna&oh=00_AfA2O_Pk4-I256-zqtQ35bhmfTOieTprZQDf1TBXxAaKeA&oe=64248E88",
                      likes: 12,
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 2,
                    ),
                    const CommentCard(
                      name: "Real Gordon Ramsay",
                      comment: "Wow Malaysia still has many potholes since i last came here...",
                      networkImage:
                          "https://pbs.twimg.com/profile_images/1448696882746695683/Jp2_LEBL_400x400.jpg",
                      likes: 10,
                    ),
                    SizedBox(
                      height: ScreenSize.vertical! * 2,
                    ),
                    const CommentCard(
                      name: "KangKang",
                      comment: "My car always fell in here😭",
                      networkImage:
                          "https://scontent.fkul15-1.fna.fbcdn.net/v/t1.6435-9/29468705_1485207048274962_8033670936290918400_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=c7siEJKoPvQAX96-lv9&_nc_ht=scontent.fkul15-1.fna&oh=00_AfAjsD_JwaObw-sh3l84_HnylFuMllHuQUNlXfEd6N03AA&oe=6447463F",
                      likes: 94,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
