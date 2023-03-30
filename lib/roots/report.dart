import 'package:flutter/material.dart';
import 'package:mykepolah/components/constants.dart';
import 'package:mykepolah/components/components.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mykepolah/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

//Report category page
class CategoryReport extends StatefulWidget {
  const CategoryReport({super.key});

  @override
  State<CategoryReport> createState() => _CategoryReportState();
}

class _CategoryReportState extends State<CategoryReport> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backcolor,
        body: SafeArea(
            top: true,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: size.height * 0.03)),
                const TopBar(
                  text: "Report",
                  iconright: Iconsax.filter_search5,
                ),
                Padding(padding: EdgeInsets.only(top: size.height * 0.01)),
                const SlideBar(
                  categories: [
                    'Infrastructure',
                    'Wildlife',
                    'Pollution',
                    'Others',
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: size.height * 0.03)),
                const Categoryreport(
                  cards: [
                    'Pot Hole',
                    'Streetlight',
                    'No Smoking',
                    'Water Pipe',
                    'Traffic Light',
                  ],
                  images: [
                    "assets/images/pothole.png",
                    "assets/images/streetlight.jpg",
                    "assets/images/smoking.jpg",
                    "assets/images/waterpipe.jpg",
                    "assets/images/trafficlight.webp",
                  ],
                  colors: [
                    pricolor,
                    cardcolor1,
                    cardcolor2,
                    cardcolor3,
                    cardcolor4,
                  ],
                ),
              ],
            )));
  }
}

//Make Report
class MakingReport extends StatefulWidget {
  const MakingReport({super.key});

  @override
  State<MakingReport> createState() => _MakingReportState();
}

class _MakingReportState extends State<MakingReport> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backcolor,
        body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * 0.03,
                  child: const TopBar(
                    text: "Report",
                    iconright: Iconsax.message_question5,
                  ),
                ),
                Positioned(top: size.height * 0.13, child: LocationTrack()),
                Positioned(
                    bottom: size.height * 0.03,
                    left: size.width / 10,
                    child: const BottomBar(
                      categories: "Streetlight",
                    )),
              ],
            )));
  }
}