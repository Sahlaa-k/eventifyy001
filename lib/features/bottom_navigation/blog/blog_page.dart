
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
      backgroundColor:  ColorConstant.secondaryColor,
      appBar: AppBar(
        actions: [
          SvgPicture.asset(IconConstant.searchIcon),
          SvgPicture.asset(IconConstant.saveIcon),
        ],
        backgroundColor: ColorConstant.secondaryColor,
        title:Text("Blog",style: GoogleFonts.aBeeZee(
          color: ColorConstant.primaryColor,
          fontWeight: FontWeight.w700,
          fontSize: width*0.15,
        ),
        ),
      ),
      body: Column(

      ),
    );
  }
}
