import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykepolah/utils/homepage_components.dart';
import '../utils/size_config.dart';

class ProfilePageHeader extends StatelessWidget {
  const ProfilePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Profile",
            style: TextStyle(
              color: Color(0xff47466D),
              fontSize: ScreenSize.horizontal! * 8,
              fontWeight: FontWeight.w800,
              letterSpacing: ScreenSize.horizontal! * 0.3,
            ),
          ),
          Icon(
            Iconsax.edit5,
            color: Color(0xff47466D),
            size: ScreenSize.horizontal! * 8,
          )
        ]);
  }
}

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Container(
      width: double.infinity,
      height: ScreenSize.vertical! * 30,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 175, 174, 174),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            )
          ]),
      child: Column(children: [
        SizedBox(
          height: ScreenSize.vertical! * 1,
        ),
        CircleAvatar(
          radius: ScreenSize.horizontal! * 10,
          backgroundImage: NetworkImage(
              "https://instagram.fkul15-1.fna.fbcdn.net/v/t51.2885-19/59189175_433339487484711_4145005566512594944_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fkul15-1.fna.fbcdn.net&_nc_cat=103&_nc_ohc=zUE9J7QBj08AX-nbQEo&edm=ACWDqb8BAAAA&ccb=7-5&oh=00_AfA95Ujo9fPhIHCbtWDyUQwqxEnUI7l0f1ABxrmTXwOqSA&oe=64242DFA&_nc_sid=1527a3"),
        ),
        SizedBox(
          height: ScreenSize.vertical! * 1,
        ),
        GreenUnderlinedText(
            text: "LaiZM ",
            top: ScreenSize.vertical! * 1.5,
            left: ScreenSize.horizontal! * 3,
            height: ScreenSize.vertical! * 2,
            width: ScreenSize.horizontal! * 16,
            fontSize: ScreenSize.horizontal! * 6),
        SizedBox(
          height: ScreenSize.vertical! * 1,
        ),
        Container(
          width: ScreenSize.horizontal! * 70,
          child: const Text(
            "Passionate in making the world a better place",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: ScreenSize.vertical! * 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Report
            Column(
              children: [
                Text(
                  "12",
                  style: TextStyle(
                    color: Color(0xff47466D),
                    fontSize: ScreenSize.horizontal! * 4.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "REPORT",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenSize.horizontal! * 2.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 4,
            ),
            Container(
              color: Color.fromARGB(255, 190, 190, 190),
              width: ScreenSize.horizontal! * 0.2,
              height: ScreenSize.vertical! * 4,
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 4,
            ),
            Column(
              children: [
                Text(
                  "34",
                  style: TextStyle(
                    color: Color(0xff47466D),
                    fontSize: ScreenSize.horizontal! * 4.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "COMMENTS",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenSize.horizontal! * 2.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 4,
            ),
            Container(
              color: Color.fromARGB(255, 201, 200, 200),
              width: ScreenSize.horizontal! * 0.2,
              height: ScreenSize.vertical! * 4,
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 4,
            ),
            Column(
              children: [
                Text(
                  "92",
                  style: TextStyle(
                    color: Color(0xff47466D),
                    fontSize: ScreenSize.horizontal! * 4.5,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "LIKES",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: ScreenSize.horizontal! * 2.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    );
  }
}

class EditDetailsCard extends StatelessWidget {
  final IconData leadingIcon;
  final String textContent;
  final IconData trailingIcon;
  const EditDetailsCard({
    super.key,
    required this.leadingIcon,
    required this.textContent,
    required this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: ScreenSize.vertical! * 1.5, horizontal: ScreenSize.horizontal! * 4),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15), boxShadow: [
        BoxShadow(
          color: Color.fromARGB(255, 200, 199, 199),
          offset: Offset(0, 4),
          blurRadius: 4,
          spreadRadius: 0,
        )
      ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              leadingIcon,
              size: ScreenSize.horizontal! * 8.5,
              color: Color(0xff47466D),
            ),
            SizedBox(
              width: ScreenSize.horizontal! * 3,
            ),
            Text(
              textContent,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Icon(
          trailingIcon,
          color: Color(0xff47466D),
        ),
      ]),
    );
  }
}
