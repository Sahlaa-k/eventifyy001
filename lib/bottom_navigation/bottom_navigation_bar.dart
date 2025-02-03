import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../blog/blog_page.dart';
import '../constants/color_constant.dart';
import '../constants/icon_constant.dart';
import '../main.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectintex = 0;
  List pages = [
    Container(),
    //VendorsPage(),
    BlogPage(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
         bottomNavigationBar: CurvedNavigationBar(
          index: 0,
          items: [
            SvgPicture.asset(IconConstant.homeIcon,height: width*0.09,),
            SvgPicture.asset(IconConstant.communityIcon,height: width*0.09,),
            SvgPicture.asset(IconConstant.blogIcon,height: width*0.09,),
            SvgPicture.asset(IconConstant.profileIcon,height: width*0.09,),
          ],
          color: ColorConstant.primaryColor,
          buttonBackgroundColor: ColorConstant.primaryColor,
          backgroundColor: ColorConstant.BackgroundColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (value) {
            selectintex=value;
            setState(() {
            });
          },
          letIndexChange: (index) => true,
        ),
        body: pages[selectintex],

    );
  }
}
