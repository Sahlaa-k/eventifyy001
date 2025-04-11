import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eventify001/features/bottom_navigation/profile/profile_page.dart';
import 'package:eventify001/features/bottom_navigation/ventors/vendors_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../core/constants/color_constant.dart';
import '../../core/constants/icon_constant.dart';
import '../../core/constants/image_constant.dart';
import '../../main.dart';

import 'community/community_page.dart';
import 'home/home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectIndex = 0;
  List pages = [
    HomePage(),
    VendorsPage(),
    CommunityPage(),

    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true, // Ensures the navigation bar overlaps the body
      bottomNavigationBar: CurvedNavigationBar(

        index: selectIndex,
        items: [
          SvgPicture.asset(
            IconConstant.homeIcon,
            height: width * 0.09,
            color:  selectIndex == 0
                ? ColorConstant.backgroundColor // Pink for selected
                : ColorConstant.backgroundColor,
          ),
          SvgPicture.asset(
            IconConstant.vendor,
            height: width * 0.09,
            color: selectIndex == 1
                ? ColorConstant.backgroundColor // Pink for selected
                :ColorConstant.backgroundColor,
          ),
          SvgPicture.asset(
            IconConstant.communityIcon,
            height: width * 0.09,
            color:  selectIndex == 2
                ? ColorConstant.backgroundColor // Pink for selected
                : ColorConstant.backgroundColor,
          ),
          SvgPicture.asset(
            IconConstant.profileIcon,
            height: width * 0.09,
            color:  selectIndex == 4
                ? ColorConstant.backgroundColor // Pink for selected
                : ColorConstant.backgroundColor,
          ),
        ],
        color: ColorConstant.primaryColor, // No fixed color for navigation bar
        buttonBackgroundColor: ColorConstant.primaryColor, // Matches page background
        backgroundColor: Colors.transparent, // Makes the navigation bar float
        animationCurve: Curves.easeInOut,

        animationDuration: const Duration(milliseconds: 600),
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        letIndexChange: (index) => true,

      ),
      body: pages[selectIndex],
      floatingActionButton:  FloatingActionButton(
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => AddUserPage(),
            //     ));
          },
          shape: CircleBorder(),
          backgroundColor: ColorConstant.primaryColor,

          child: CircleAvatar(
            radius: width*0.065,
            backgroundImage: AssetImage(ImageConstant.Ai,),
          )
      ),
    );
  }
}
