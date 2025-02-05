
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/color_constant.dart';
import '../../../constants/icon_constant.dart';
import '../../../main.dart';



class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:  ColorConstant.backgroundColor,
      appBar: AppBar(
        surfaceTintColor: ColorConstant.backgroundColor,
        actions: [
          Padding(
            padding:  EdgeInsets.all(width*0.03),
            child: SvgPicture.asset(IconConstant.searchIcon),
          ),
          Padding(
            padding:  EdgeInsets.all(width*0.03),
            child: SvgPicture.asset(IconConstant.saveIcon),
          ),
        ],
        backgroundColor: ColorConstant.backgroundColor,
        title:Text("Blog",style: GoogleFonts.aBeeZee(
          color: ColorConstant.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.1,
        ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: ListView.separated(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Stack(
              children:[ Container(
                height: width*0.8,
                width: width,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: ColorConstant.grey,
                          blurRadius:4,
                          spreadRadius: 2,
                          offset:Offset(0,4)
                      )
                    ],
                    color: ColorConstant.secondaryColor,
                    borderRadius: BorderRadius.circular(width*0.03)
                ),
              ),
                Container(
                  height: width*0.04,
                  width: width,
                ),
            ],
            );
          },
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: width*0.03,
            );
          },
        ),
      ),
    );
  }
}
