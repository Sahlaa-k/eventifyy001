import 'package:eventify001/features/bottom_navigation/community/community.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icon.dart';


import '../../../core/constants/color_constant.dart';
import '../../../main.dart';
import 'blog.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  bool search = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstant.backgroundColor,
        appBar: AppBar(
          title: Text(
            "Community",
            style: TextStyle(
                color: ColorConstant.backgroundColor,
                fontWeight: FontWeight.w700,
                fontSize: width * 0.07),
          ),
          actions: [
            InkWell(
                onTap: () {
                  search = !search;
                  setState(() {});
                },
                child: Icon(
                  Icons.search,
                  color: ColorConstant.backgroundColor,
                  size: width * 0.08,
                )),
            // Icon(
            //   Icons.bookmark_border_rounded,
            //   color: ColorConstant.backgroundColor,
            //   size: width * 0.08,
            // ),
          ],
          backgroundColor: ColorConstant.primaryColor,
        ),
        body: Column(
          children: [
            if (search)
              Padding(
                padding:  EdgeInsets.all(width*0.03),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.3), // Black shadow with opacity
                        blurRadius: width * 0.02, // Softness of the shadow
                        spreadRadius:
                            width * 0.002, // How much the shadow expands
                        offset: Offset(1, 3), // Moves shadow to bottom-right
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                        width * .02), // Match TextFormField border
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Anything....',
                      hintStyle: TextStyle(
                          color: ColorConstant.thirdColor,
                          fontSize: width * 0.04),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * .02),
                        borderSide: BorderSide.none,
                        // borderSide: BorderSide(
                        //     //color: ColorConstant.primaryColor, width: width * .006
                        // ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * .02),
                        borderSide: BorderSide.none,
                        // borderSide: BorderSide(
                        //    // color: ColorConstant.primaryColor, width: width * .006
                        // ),
                      ),
                    ),
                  ),
                ),

              ),
            // SizedBox(
            //   height: height * 0.03,
            // ),
            Container(
              height: height * 0.1,
              width: width * 1,
              child: TabBar(
                  indicatorColor: ColorConstant.secondaryColor,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: ColorConstant.primaryColor,
                  unselectedLabelColor: ColorConstant.primaryColor,
                  labelStyle: TextStyle(
                      fontSize: width * 0.04, fontWeight: FontWeight.w700),
                  unselectedLabelStyle: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: [

                    Tab(
                      text: "Community",
                    ),
                    Tab(
                      text: "Wedding Ideas",
                    ),
                  ]),
            ),

            Flexible(child: TabBarView(children:

            [CommunityTab(),BlogTab(), ]))
          ],
        ),
      ),
    );
  }
}
